% Last edited: Bethany Gardner, 10/2022. Data collection version.
%
% Script for Singular They Eyetracking Exp1 | Bethany Dissertation Exp4
% Learn about set of 6 characters (2 he/him, 2 she/her, 2 they/them),
% then do 'standing in a red square' task.
%
%%%%%%%%%%
% EXP INFO
%%%%%%%%%%
% Setup [they4.m]
%   * Asks for list assignment
%   * Generates a 3-letter random code, instead of using participant initials
%   * Can specify which sections to run for debugging. Commented out for 
%     data collection. 
% Learn about characters [charIntros.m, charPre.m]
%   * Show set of 6 characters (order randomized) 2x
%   * Test name-image; need to get all 6 correct in same block to continue
% Eyetracking [mainTrials.m]
%   * Goes through practice trials (6) then critical (96) + filler (18)
%     trials in random order
%   * Displays 6 images, each sized 320x341 pixels, location randomized
%   * Waits 1s, plays first audio clip (name 2 characters), records stimuli
%     and time in EDF then TXT 
%   * Waits 0.25s, plays second audio clip (pronoun/color/shape), records
%     stimuli and time in EDF then TXT 
%   * Waits 0.25s, plays third audio clip (end), records stimuli and time 
%     in EDF then TXT 
%   * Asks "Did the story match the picture?", records YES/NO click and RT
%     in TXT 
%   * Continues to next trial after YES/NO click
%   * Drift corrects every 5 trials. Press space while looking at the dot,
%     or "c" to recalibrate.
% Posttest [charPost.m]
%	* Tests name-image one more time. No feedback.
%
%%%%%%%%%%%%%%
% REQUIREMENTS
%%%%%%%%%%%%%%
% Experiments/SingularThey_Exp4/ on lab computer
% CODE in Scripts/. Split up largely to make debugging/testing easier.
%	* they4.m = main script (this one)
%	* charIntros.m
%	* charPre.m
%	* mainTrials.m
%	* charPost.m
%	* startScreen.m (called at beginning of each other script)
% PICTURES as PNGs in Images/ subfolder, including "imageNotFound"
% AUDIO as WAVs in Audio/ subfolder, including "empty"
% STIMULI LISTS as CSVs in Lists/ subfolder
%   * 1 file per list
%   * intros_listN have info for character introductions and pretests.
%     6x10 with columns: List, Trial_Type, Char, Char_Pronoun, Char_Image, 
%     Char_Name, Text_ThisIs, Text_PronounIs, Text_Hobby, Text_Job
%   * main_listN have info for main trials, organized by practice, critical,
%     filler. 120x22 with columns: List, Trial_Type, Trial_ID, Order,
%     Target_Pronoun, Target_Image, Target_Name, Target_ImagePath,
%     Competitor_Pronoun, Competitor_Image,	Competitor_Name,
%     Competitor_ImagePath, ImagePath_Distractor1, ImagePath_Distractor2,
%     ImagePath_Distractor3, ImagePath_Distractor4, Story_Code,
%     Story_Audio1, Story_Audio2, Story_Audio3, Correct_Answer,
%     Correct_Description
% Software versions/specs:
%   * MATLAB: 2016a
%   * OSX: El Capitan 10.11.6
%   * Screen size: 1920x1080
%   * Newer eyetracker
%   * See this webpage about the audio command we're using. You need
%     special DLLs to make it work.
%     http://psychtoolbox.org/wikka.php?wakka=PsychPortAudio Psychportaudio
%     will print to screen info about audio timing delays. Take note of the
%     values.
%
%%%%%%%%%%%%
%DATA OUTPUT
%%%%%%%%%%%%
% TXT data in Data/ subfolder
%   * charIntros_SubjNumSubCode.txt with record of character intro stimuli
%     shown, no responses.
%   * charTest_SubjNumSubjCode_.txt with character pretest data.
%   * trialRecord_SubjNumSubjCode.txt with record of stimuli presentation (more
%     details than EDF) and data for the story match question
% EDF on Eyelink computer in E:// drive, ones that start with 'T'
% EDF tmp file in Data/ on experiment computer.
%
%%%%%%%%%
% SOURCES
%%%%%%%%%
% Based on Sarah's "ProGradient3" and "ForwardBackward3" scripts
% General additions to prior lab scripts: 
%   * Checks that EDF filename is not going to be longer than 8 char
%     after entering participant information. Will end script if too long.
%   * Try/catch for loading images and audio. Will use "image not found"
%     and silent audio, then write error message to TXT data file,
%     instead of psychtoolbox freezing.
% Changes from older versions of matlab: 
%   * rng() instead of rand('twister', sum(100*clock))
%   * audioread() instead of wav_read()


%% SETUP VARIABLES
clear variables;

slashes = '/'; %mac

white  = [255 255 255];
black  = [0 0 0];
grey   = [150 150 150];

pics_dir   = '/Experiments/SingularThey_Exp4/Images/';
sounds_dir = '/Experiments/SingularThey_Exp4/Audio/'; 
list_dir   = '/Experiments/SingularThey_Exp4/Lists/'; 
data_dir   = '/Experiments/SingularThey_Exp4/Data/';

%Image to show if stimuli isn't found so exp moves on instead of crashing
picNotFound   = imread(strcat(pics_dir, 'imageNotFound.png')); 
%Empty audio to play if stimuli isn't found
audioNotFound = audioread(strcat(sounds_dir, 'empty.wav'), [1, Inf]); 

%Random number stream (default algorithm, seed based on current time)
rng(sum(clock*100), 'twister');

%% PARTICIPANT/RUN INFO
%Get subject number 
subjNum  = inputnumber('Enter subject number (0-99):  ', 0, 99); %mac

%Generate subject code (instead of entering inititals) 
subjCode = char(randsample(65:90, 3));
sprintf('%s%s', 'The random subject code is: ', subjCode)

%Assign to list (6 total)
list     = inputnumber('Enter list (1-6):  ', 1, 6);

%Do eyetracking?
doeyetracking = -1;
while doeyetracking < 0
    userstr = upper(input('Do eye-tracking in this session? (Y for Yes, N for No): ','s'));
    if strcmp(userstr, 'Y')
        doeyetracking = 1;
        filename_EDF = sprintf('%s%s%s%s%s.edf',...
            'T_',... %T for They, to distinguish data on eyelink computer
            num2str(subjNum), subjCode);  %Subj info
        if EyelinkInit()~= 1; %Check for connection
            return;
        end;
    elseif strcmp(userstr, 'N')
        doeyetracking = 0;
        filename_EDF = 'NA';
    end
end

%Check that EDF filename isn't over 8 characters long (+4 for filetype)
if length(filename_EDF) > 12
    fprintf('%s %s %s', 'Error: the EDF filename', filename_EDF,...
        'is too long. It needs to be 8 characters or less (not including .edf)');
    return
end
    
%% STIMULI LISTS

%List for character intros/test
CharListRead = fopen(strcat(list_dir, 'intros_list', num2str(list), '.csv'));
CharListBuffer = textscan(CharListRead, repmat('%s', 1, 10),... 
    'EndOfLine', '\r\n', 'Delimiter', ',', 'HeaderLines', 1);  
fclose(CharListRead);

%List for practice, critical, and filler trials
StimListRead = fopen(strcat(list_dir, 'main_list', num2str(list), '.csv'));
StimListBuffer = textscan(StimListRead, repmat('%s', 1, 22),... 
    'EndOfLine', '\r\n', 'Delimiter', ',', 'HeaderLines', 1); 
fclose(StimListRead);

%Random order of practice trials
trialOrder_P = randperm(6);
% if dopractice == 0 %If not running practice block
%     trialOrder_P = [];
% end

%Random order of critical/filler trials
trialOrder_M = randperm(114);
% if nTrials < 114 %If just running a few trials for testing
%     trialOrder_M = randsample(trialOrder_M, nTrials);
% end
trialOrder_M = trialOrder_M + 6; %Always after 6 practice trials in stim list

%List of which trials/which order to pull from main stim list 
trialOrder = cat(2, trialOrder_P, trialOrder_M);

%% TXT RESULTS FILES

%% Introduction to characters
filename_intros  = strcat(data_dir, 'charIntros_', num2str(subjNum), subjCode, '.txt');
writeData_intros = fopen(filename_intros, 'a');
fprintf(writeData_intros, '%s\n', 'Singular They Eyetracking Exp1 | Bethany Dissertation Exp4');
fprintf(writeData_intros, '%s\n', 'Record of character introduction stimuli displayed.');
fprintf(writeData_intros, '%s%s\n', 'Date: ', datestr(datetime('today')));
fprintf(writeData_intros, strcat(repmat('%s\t', 1, 11), '\n'),... 
    'SubjNum', 'SubjCode', 'List', 'TrialType', 'TrialOrder',....
    'Char', 'Char_Pronoun', 'Char_Image', 'Char_Name',...
    'Text_Name', 'Text_Fact');

%% Character pretest and posttest
filename_charTest  = strcat(data_dir, 'charTest_', num2str(subjNum), subjCode, '.txt');
writeData_charTest = fopen(filename_charTest, 'a');
fprintf(writeData_charTest, '%s\n', 'Singular They Eyetracking Exp1 | Bethany Dissertation Exp4');
fprintf(writeData_charTest, '%s\n', 'Pretest for name-image mappings.');
fprintf(writeData_charTest, '%s%s\n', 'Date: ', datestr(datetime('today')));
fprintf(writeData_charTest, strcat(repmat('%s\t', 1, 29), '\n'),... 
    'SubjNum', 'SubjCode', 'List', 'TrialType', 'TestRound', 'TrialOrder',...
    'T_Char', 'T_Pronoun', 'T_Image', 'T_Name',...
    'Char1_Image', 'Char1_Loc', 'Char2_Image', 'Char2_Loc',...
    'Char3_Image', 'Char3_Loc', 'Char4_Image', 'Char4_Loc',...
    'Char5_Image', 'Char5_Loc', 'Char6_Image', 'Char6_Loc',...
    'T_Is', 'T_Loc', 'Response', 'Click_Loc',... 
    'Acc', 'Text_Target', 'Text_Wrong');

%% Main
filename_txt = strcat(data_dir, 'trialRecord_', num2str(subjNum), subjCode, '.txt');
writeData_mainTxt = fopen(filename_txt, 'a');
fprintf(writeData_mainTxt, '%s\n', 'Singular They Eyetracking Exp1 | Bethany Dissertation Exp4');
fprintf(writeData_mainTxt, '%s\n', 'TXT output for main task (practice, critical, and filler).');
fprintf(writeData_mainTxt, '%s%s\n%s%s\n',... 
    'Date: ', datestr(datetime('today')), 'Eyetracking: ', filename_EDF);
fprintf(writeData_mainTxt, strcat(repmat('%s\t', 1, 38), '\n'),... 
    'SubjNum', 'SubjCode', 'List', 'TrialType',... 
    'TrialOrder', 'TrialID', 'Order', 'Story',... 
    'T_Pronoun', 'T_Image', 'T_Name', 'T_Path',...
    'C_Pronoun', 'C_Image', 'C_Name', 'C_Path',...
    'D1_Path', 'D2_Path', 'D3_Path', 'D4_Path', ...
    'Loc_T', 'Loc_C', 'Loc_D1', 'Loc_D2', 'Loc_D3', 'Loc_D4',... 
    'Audio1_Path', 'Audio2_Path', 'Audio3_Path',...
    'Scene_Start', 'Audio1_Start', 'Audio2_Start', 'Audio3_Start',...
    'Match', 'Match_Start', 'Match_end', 'Match_X', 'Match_Y');

%% RUN: CHAR INTROS

% start = -1;
% while start < 0
%     userstr = upper(input('Start character intros?  ','s'));
%     if strcmp(userstr, 'Y')
%         start = 1;
%         charIntros
%     elseif strcmp(userstr, 'N')
%         start = 0;
%     end
% end
charIntros
fclose(writeData_intros);

%% RUN: CHAR PRETEST

% start = -1;
% while start < 0
%     userstr = upper(input('Start character pretest?  ','s'));
%     if strcmp(userstr, 'Y')
%         start = 1;
%         charPre
%     elseif strcmp(userstr, 'N')
%         start = 0;
%     end
% end
charPre

%% RUN: PRACTICE & MAIN TRIALS

% start = -1;
% while start < 0
%     userstr = upper(input('Start main trials?  ','s'));
%     if strcmp(userstr, 'Y')
%         start = 1;
mainTrials

if doeyetracking
    status = Eyelink('closefile'); %Save EDF on eyetracker computer
    if status ~=0
        disp(sprintf('closefile error, status: %d', status))
    end
    status=Eyelink('ReceiveFile', edfFile, data_dir, 1);  %Save EDF on exp computer
    if status~=0
        fprintf('problem: ReceiveFile status: %d\n', status);
    end
    if 2==exist(edfFile, 'file')
        fprintf('Data file ''%s'' can be found in ''%s''\n', data_dir, edfFile);
    else
        disp('unknown where data file went')
    end

    Eyelink('closefile');
    Eyelink('shutdown');
end
    
%      elseif strcmp(userstr, 'N')
%         start = 0;
%     end
% end
fclose(writeData_mainTxt);

%% RUN: CHAR POSTTEST

% start = -1;
% while start < 0
%     userstr = upper(input('Start posttest?  ','s'));
%     if strcmp(userstr, 'Y')
%         start = 1;
%         charPost
%     elseif strcmp(userstr, 'N')
%         start = 0;
%     end
% end
charPost

fclose(writeData_charTest);

%% END
% Close screen at end of each section script
% Close files after each section is run
sprintf('%s%s', 'For the survey questions, enter the participant number and random code: ', subjNum, subjCode)
