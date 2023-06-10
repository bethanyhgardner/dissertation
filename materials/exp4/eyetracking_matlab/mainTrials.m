% Last edited: Bethany Gardner, 10/2022. Data collection version.

% Eyetracker setup and main trials.
% More details in main script, they4.m

%% PRACTICE, CRITICAL, & FILLER TRIALS

startScreen

%% AUDIO

InitializePsychSound(0);
 
%Make 1 channel for each of 3 stimuli files so they can all be preloaded
audioBuffer1 = PsychPortAudio('Open', [], 1, 1, 44100, 2, 20); 
    %device id  : [] for default device
    %mode       : 1 for playback only
    %latency    : 1 for fast (0 uses default audio system, slower)
    %frequency  : 44100 Hz/sec for high quality
    %channels   : 2 for stereo
    %buffer size: 20 seconds
audioBuffer2 = PsychPortAudio('Open', [], 1, 1, 44100, 2, 20); 
audioBuffer3 = PsychPortAudio('Open', [], 1, 1, 44100, 2, 20); 

%NOTES: 

%Wavread() only works through 2015a. This uses audioread() instead.

%Matlab reads the audio files as a long format matrix (samples x channels)
%But psych audio wants them in wide format (channels x samples)
%So they have to be inverted using ' before being added to the buffer

%Psychport audio will print to console if there is a delay

%PsychPortAudio('Start',audiochannel,1);  % starts playing
%1 = number of repetitions
%by default, the experiment continues while the sound is playing
%PsychPortAudio('Stop',audiochannel,1);
%1 makes it WAIT for the audio to STOP playing on its own

%% CALIBRATE TRACKER
if doeyetracking
    commandwindow;
    %STEP 1
    %Initialization of the connection with the Eyelink Gazetracker.
    % Exit program if this fails.
    if EyelinkInit()~= 1;
        return;
    end;
    
    %STEP 2
    %Open a graphics window on the main screen
    %using the PsychToolbox's Screen function.
    screenNumber = max(Screen('Screens'));
    [window, wRect] = Screen('OpenWindow', screenNumber, 0, [], 32, 2);
    Screen(window,'BlendFunction',GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    
    %STEP 3
    %Provide Eyelink with details about the graphics environment
    %and perform some initializations. The information is returned
    %in a structure that also contains useful defaults
    %and control codes (e.g. tracker state bit and Eyelink key values).
    el = EyelinkInitDefaults(window);
    
    %Make sure that we get gaze data from the Eyelink
    Eyelink('Command', 'link_sample_data = LEFT,RIGHT,GAZE,AREA');
    [v, vs] = Eyelink('GetTrackerVersion');
    
    %Open file to record data to
    edfFile = filename_EDF; % Do not name 2 files the same thing.
    Eyelink('Openfile', edfFile);  %Put info at top of EL file.
    Eyelink('message', sprintf('Singular They Eyetracking Exp1 | Bethany Dissertation Exp4')); 
    Eyelink('message', sprintf('%s %s%s %s %s',... 
        'Subject:', num2str(subjNum), subjCode, 'List:', num2str(list)));   
    %STEP 4
    %Calibrate the eye tracker
    EyelinkDoTrackerSetup(el);
end

%% TRIALS

Screen('CopyWindow', blank, window, rect, rect);
Screen('TextSize', window, 50);
DrawFormattedText(window,... 
    'In this experiment, you will listen to a series of stories\n Your job is to say whether the story matches the picture.\nAt the end of each story, please say whether it matches or not.\n ',... 
    'center', 'center', black);
Screen('Flip',  window, [], 1); %show instructions
WaitSecs(2);

Screen('TextSize', window, 30);
DrawFormattedText(window, '(Click to continue)', 'center', Y3qtr, grey);
Screen('Flip',  window, [], 1); %click to continue
GetClicks();

Screen('CopyWindow', blank, window, rect, rect);
Screen('Flip', window, [], 1); %clear 

Screen('TextSize', window, 50);
DrawFormattedText(window,... 
    'First, we will do a few practice trials to show you what the stories are like.',... 
    'center', 'center', black);
Screen('Flip',  window, [], 1); %show instructions
WaitSecs(2);

Screen('TextSize', window, 30);
DrawFormattedText(window, '(Click to continue)', 'center', Y3qtr, grey);
Screen('Flip',  window, [], 1); %click to continue
GetClicks();

Screen('CopyWindow', blank, window, rect, rect);
Screen('Flip', window, [], 1); %clear 

trialIndex = -1;
for x = trialOrder;
    %% Trial info
    trialIndex = trialIndex + 1;
    trialType  = StimListBuffer{2}(x);
    trialID    = StimListBuffer{3}(x); 
	order      = StimListBuffer{4}(x);
	story      = StimListBuffer{17}(x);
    trialType=trialType{1}; trialID=trialID{1}; order=order{1}; story=story{1};

    %Target
	t_pronoun = StimListBuffer{5}(x);
	t_image   = StimListBuffer{6}(x);
	t_name    = StimListBuffer{7}(x);
	t_path    = strcat(pics_dir, StimListBuffer{8}(x));
    t_pronoun=t_pronoun{1}; t_image=t_image{1}; t_name=t_name{1}; t_path=t_path{1};

	%Competitor
	c_pronoun = StimListBuffer{9}(x);
	c_image   = StimListBuffer{10}(x);
	c_name    = StimListBuffer{11}(x);
	c_path    = strcat(pics_dir, StimListBuffer{12}(x));
	c_pronoun=c_pronoun{1}; c_image=c_image{1}; c_name=c_name{1}; c_path=c_path{1};
    
	%Distractors
	d1_path = strcat(pics_dir, StimListBuffer{13}(x));
	d2_path = strcat(pics_dir, StimListBuffer{14}(x));
	d3_path = strcat(pics_dir, StimListBuffer{15}(x));
	d4_path = strcat(pics_dir, StimListBuffer{16}(x));
 	d1_path=d1_path{1}; d2_path=d2_path{1}; d3_path=d3_path{1}; d4_path=d4_path{1};

    %% Get images
 	%Open images, display and log error if not found
    try %Target
        pic_t  = imread(t_path);
    catch
        pic_t  = picNotFound; 
        fprintf(writeData_mainTxt, '%s\n', strcat('Target image ', t_path, ' not found in trial ', trialID));
    end
    
    try %Competitor
        pic_c  = imread(c_path);
    catch
        pic_c  = picNotFound;  
        fprintf(writeData_mainTxt, '%s\n', strcat('Competitor image ', c_path, ' not found in trial ', trialID));
    end
    
    try %Distractor 1
        pic_d1 = imread(d1_path);
    catch
        pic_d1 = picNotFound; 
        fprintf(writeData_mainTxt, '%s\n', strcat('D1 image ', d1_path, ' not found in trial ', trialID));
    end
    
    try %Distractor 2
        pic_d2 = imread(d2_path);
    catch
        pic_d2 = picNotFound;  
        fprintf(writeData_mainTxt, '%s\n', strcat('D2 image ', d2_path, ' not found in trial ', trialID));
    end
    
    try %Distractor 3
        pic_d3 = imread(d3_path);
    catch
        pic_d3 = picNotFound; 
        fprintf(writeData_mainTxt, '%s\n', strcat('D3 image ', d3_path, ' not found in trial ', trialID));
    end
    
    try %Distractor 4
        pic_d4 = imread(d4_path);
    catch
        pic_d4 = picNotFound; 
        fprintf(writeData_mainTxt, '%s\n', strcat('D4 image ', d4_path, ' not found in trial ', trialID));
    end

    %% Image locations
	%Put images onto baby windows
	Screen(port1,'PutImage', pic_t,  portSize, ('srcCopy'));
	Screen(port2,'PutImage', pic_c,  portSize, ('srcCopy'));
	Screen(port3,'PutImage', pic_d1, portSize, ('srcCopy'));
	Screen(port4,'PutImage', pic_d2, portSize, ('srcCopy'));
	Screen(port5,'PutImage', pic_d3, portSize, ('srcCopy'));
	Screen(port6,'PutImage', pic_d4, portSize, ('srcCopy'));
	
	%Randomize image locations
	randport = randperm(6);
	rpt1 = eval(['pt' num2str(randport(1))]);
    rpt2 = eval(['pt' num2str(randport(2))]);
    rpt3 = eval(['pt' num2str(randport(3))]);
    rpt4 = eval(['pt' num2str(randport(4))]);
    rpt5 = eval(['pt' num2str(randport(5))]);
    rpt6 = eval(['pt' num2str(randport(6))]);
	
	%Save what those image locations are
	loc_T  = ['pt', num2str(randport(1))];
    loc_C  = ['pt', num2str(randport(2))];
    loc_D1 = ['pt', num2str(randport(3))];
    loc_D2 = ['pt', num2str(randport(4))];
    loc_D3 = ['pt', num2str(randport(5))];
    loc_D4 = ['pt', num2str(randport(6))];
    
    %Put 6 small screens onto full screen
	Screen('CopyWindow', port1, window, portSize, rpt1);
    Screen('CopyWindow', port2, window, portSize, rpt2);
    Screen('CopyWindow', port3, window, portSize, rpt3);
    Screen('CopyWindow', port4, window, portSize, rpt4);
    Screen('CopyWindow', port5, window, portSize, rpt5);
    Screen('CopyWindow', port6, window, portSize, rpt6);

    %% Get audio
    %Audio 1: Name two characters
    audio1_path = char(strcat(sounds_dir, StimListBuffer{18}(x),'.wav'));
    try 
        audio1 = audioread(audio1_path, [1, Inf]);
    catch 
        audio1 = audioNotFound;
        fprintf('%s', 'Audio 1 ', audio1_path, ' not found in trial ', trialID);
    end
    
    %Audio 2: Pronoun/location
    if strcmp(trialType, 'PR')
        audio2_path = char(strcat(sounds_dir, StimListBuffer{19}(x), '.wav'));
    else
        audio2_version = randsample([1, 2, 3], 1); %Pick 1 of 3 versions
        audio2_path = char(strcat(sounds_dir, StimListBuffer{19}(x),...
            num2str(audio2_version), '.wav'));
    end
    try 
        audio2 = audioread(audio2_path, [1, Inf]);
    catch 
        audio2 = audioNotFound;
        fprintf('%s', 'Audio 2 ', audio2_path, ' not found in trial ', trialID);
    end
    
    %Audio 3: End
    audio3_path = char(strcat(sounds_dir, StimListBuffer{20}(x),'.wav'));
    try 
        audio3 = audioread(audio3_path, [1, Inf]);
    catch 
        audio3 = audioNotFound;
        fprintf('%s', 'Audio 2 ', audio3_path, ' not found in trial ', trialID);
    end
    
    %Flip audio matrices from long to wide
    audio1_flip = audio1';
    audio2_flip = audio2';
    audio3_flip = audio3';
    
    %Load into buffer 
    PsychPortAudio('FillBuffer', audioBuffer1, audio1_flip); 
    PsychPortAudio('FillBuffer', audioBuffer2, audio2_flip); 
    PsychPortAudio('FillBuffer', audioBuffer3, audio3_flip);

	%% Start eyetracker recording
    if doeyetracking
        %Drift correct code later to avoid messing up stimuli screen
        %Start recording eye position during picture preview
        Eyelink('startrecording');
        eye_used = -1;  
        %Sends condition info to Eyetracker. The screen line needs to go "port,picture;port,picture...".
        %The .asc conversion has a limit on how long this line can be.
        Eyelink('message',...
            sprintf('Screen: %s %s %s %s %s %s %s %s %s %s %s %s ',...
            'T', loc_T, 'C', loc_C, 'D1', loc_D1,...
            'D2', loc_D2, 'D3', loc_D3, 'D4', loc_D4));
        Eyelink('message', sprintf('Stimuli: %d %s %s %s %s %s',... 
            trialIndex, trialID, order, story, t_pronoun, c_pronoun));
    end
    
    %% Show scene & play audio
	%Display images
    Screen('Flip',  window, [], 1); 
    scene_start = GetSecs();
	%Wait 1 sec before starting audio
    WaitSecs(1);
    
    %Play audio 1 and record start time
    PsychPortAudio('Start', audioBuffer1, 1);
    
    if doeyetracking
        Eyelink('message', sprintf('Audio1: %s', audio1_path));
    end
    audio1_start = GetSecs();
    PsychPortAudio('Stop', audioBuffer1, 1);
    
    %Wait 0.5s then play audio 2
    WaitSecs(0.5);
    PsychPortAudio('Start', audioBuffer2, 1);
   
    if doeyetracking
        Eyelink('message', sprintf('Audio2: %s', audio2_path));
    end
    audio2_start = GetSecs();
    PsychPortAudio('Stop', audioBuffer2, 1);
    
    %Wait 0.25s then play audio 3
    WaitSecs(0.25);
    PsychPortAudio('Start', audioBuffer3, 1);
    
    if doeyetracking
        Eyelink('message', sprintf('Audio3: %s', audio3_path));
    end
    audio3_start = GetSecs();
    PsychPortAudio('Stop', audioBuffer3, 1);
      
    %% Match scene question     
    Screen('TextSize', window, 50);
    DrawFormattedText(window, 'Did the story match the picture?', 'center', Y3qtr+250, black);
    Screen('FillOval', window, grey, BottomLeftBox);  
    Screen('FillOval', window, grey, BottomRightBox);  
    DrawFormattedText(window, 'YES', 'center', 'center', black, [],[],[],[],[], BottomLeftBox);
    DrawFormattedText(window, 'NO',  'center', 'center', black, [],[],[],[],[], BottomRightBox);
    Screen('Flip', window, [], 1); 
    match_start = GetSecs();
   
    [clicks, xclick, yclick, whichButton] = GetClicks();
    if xclick < Xqtr         %This is very broad about location, but "wait
        storymatch = 'yes';  %until there's a click on a specific loc is
    elseif xclick > X3qtr    %weirdly hard in matlab/psychtoolbox? So it's
        storymatch = 'no';   %saving the click coordinates too just in case.
    else
        storymatch = 'error';
    end
    match_end = GetSecs();
 
    %% Stop eyetracker recording
    if doeyetracking
        Eyelink('stoprecording');
    end 
    
    %% Feedback for practice trials
    if strcmp(trialType, 'PR')
        %Check response accuracy
        correct_answer      = StimListBuffer{21}(x);
        correct_description = StimListBuffer{22}(x);
        correct_answer=correct_answer{1}; correct_description=correct_description{1};
        
        if strcmp(storymatch, 'yes')
            if strcmp(correct_answer, 'yes')
                trial_correct = 'Correct';
                trial_match   = 'This story did match the picture:';
            else %correct_answer = no
                trial_correct = 'Incorrect';
                trial_match   = 'This story did not match the picture. \nThe matching story would be: ';
            end
        else %storymatch = no
            if strcmp(correct_answer, 'yes')
                trial_correct = 'Incorrect';
                trial_match   = 'This story did match the picture:';
            else %correct_answer = no
                trial_correct = 'Correct';
                trial_match   = 'This story did not match the picture. \nThe matching story would be: ';
            end
        end
        
        Screen('CopyWindow', blank, window, rect, rect); %Clear
        Screen('Flip', window, [], 1);
        
        %Show accuracy 
        Screen('TextSize', window, 50);
        DrawFormattedText(window, trial_correct, 'center', Yqtr, black); 
        %Show the target character image and correct description
        Screen(portC,'PutImage', pic_t, portSizeC,('srcCopy')); %Target in large center port
        Screen('CopyWindow', portC, window, portSizeC, loc_ptC);
        DrawFormattedText(window, trial_match, 'center', Y3qtr+100, black);
        DrawFormattedText(window, correct_description, 'center', Y3qtr+200, black); 
        
        Screen('Flip',  window, [], 1); 
        GetClicks(); %Wait for click to continue     
        
        %% Instructions for ending practice trials
        if strcmp(trialType, 'PR') && (x == trialOrder(6)) 
            Screen('CopyWindow', blank, window, rect, rect);
            Screen('Flip', window, [], 1); %clear 
            
            Screen('TextSize', window, 50);
            DrawFormattedText(window,... 
                'That is the end of the practice trials.\n Please let the experimenter know if you have any questions.',... 
                'center', 'center', black);
            Screen('Flip',  window, [], 1); %show instructions
            WaitSecs(2);
    
            Screen('TextSize', window, 30);
            DrawFormattedText(window, '(Click to continue)', 'center', Y3qtr, grey);
            Screen('Flip',  window, [], 1); %click to continue
            GetClicks();
        end
    end
    
    %% Write txt data
    fprintf(writeData_mainTxt, strcat(...
        repmat('%s\t', 1, 29),...    %subjNum - audio3_path 
        repmat('%f\t', 1, 4),...     %scene_start - audio3_start
        '%s\t%f\t%f\t%d\t%\d\n'),... %storymatch - yclick
        num2str(subjNum), subjCode, num2str(list), trialType,... %4
        num2str(trialIndex), trialID, order, story,...           %4 
        t_pronoun, t_image, t_name, t_path,...                   %4
        c_pronoun, c_image, c_name, c_path,...                   %4
        d1_path, d2_path, d3_path, d4_path, ...                  %4
        loc_T, loc_C, loc_D1, loc_D2, loc_D3, loc_D4,...         %6
        audio1_path, audio2_path, audio3_path,...                %3
        scene_start, audio1_start, audio2_start, audio3_start,...%4
        storymatch, match_start, match_end, xclick, yclick);     %5
    fprintf(writeData_mainTxt, strcat(repmat('%f\t', 1, 6), '\n'),...
        scene_start, audio1_start, audio2_start, audio3_start, match_start, match_end);

    %Clear screen to start next trial
    Screen('CopyWindow', blank, window, rect, rect);
    Screen('Flip', window, [], 1); 
    
    %% Drift correct before every 5th trial
    if doeyetracking
        if rem(trialIndex, 5)==0;  %Moved code to end of trial loop to avoid
            EyelinkDoDriftCorrection(el);  %messing up screen setup
            Screen('CopyWindow', blank, window, rect, rect);
            Screen('Flip', window, [], 1); 
        end
    end
    
    %% Progress after every 20 trials
    if rem(trialIndex+1, 20)==0;
        progress_text = ['Progress: ', num2str(trialIndex+1),...
            ' out of 120 trials'];
        Screen('TextSize', window, 50);
        DrawFormattedText(window, progress_text, 'center', 'center', black);
        Screen('Flip', window, [], 1); 
        GetClicks();
        Screen('CopyWindow', blank, window, rect, rect);
        Screen('Flip', window, [], 1); 
    end
end  %End main trial loop and close txt output file

%Close audio channels and screen
PsychPortAudio('Close', audioBuffer1); 
PsychPortAudio('Close', audioBuffer2);
PsychPortAudio('Close', audioBuffer3);
Screen('CloseAll');

clear audio1 audio1_flip audio1_path audio1_start audioBuffer1;
clear audio2 audio2_flip audio2_path audio2_start audioBuffer2;
clear audio3 audio3_flip audio3_path audio3_start audioBuffer3;
clear c_image c_name c_path c_pronoun;
clear clicks xclick yclick whichButton correct_answer correct_description;
clear d1_path d2_path d3_path d4_path;
clear loc_C loc_T loc_D1 loc_D2 loc_D3 loc_D4;
clear match_start match_end storymatch order progress_text scene_start;
clear pic_t pic_c pic_d1 pic_d2 pic_d3 pic_d4;
clear t_image t_name t_path t_pronoun;
clear trial_correct trial_match trialIndex;