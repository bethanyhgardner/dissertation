% Last edited: Bethany Gardner, 10/2022. Data collection version.

% Shows pictures and text introducing 6 characters.
% Saves record of stimuli displayed but no participant responses happen here.
% More details in main script, they4.m

%% INTRO TO CHARACTERS

startScreen

%% Instructions

Screen('TextSize', window, 50);
DrawFormattedText(window,... 
    'To get started, you will see pictures of characters \nand read some information about them. \nPlease look at these carefully.',... 
    'center', 'center', black);
Screen('Flip',  window, [], 1); %show instructions
WaitSecs(2);

Screen('TextSize', window, 30);
DrawFormattedText(window, '(Click to continue)', 'center', Y3qtr, grey);
Screen('Flip',  window, [], 1); %click to continue
GetClicks();

Screen('CopyWindow', blank, window, rect, rect);
Screen('Flip', window, [], 1); %clear 

%% 1st round: names + hobby

introOrder1 = randperm(6); %go in random order

for x = introOrder1;
    trialType    = 'intro_hobby';
    char         = CharListBuffer{3}(x);
    char_pronoun = CharListBuffer{4}(x);
    char_image   = CharListBuffer{5}(x);
    char_name    = CharListBuffer{6}(x);
    text_name    = CharListBuffer{7}(x);
    text_hobby   = CharListBuffer{9}(x);
    %Convert from cell to string
    char=char{1}; char_pronoun=char_pronoun{1}; char_image=char_image{1}; char_name=char_name{1}; text_name=text_name{1}; text_hobby=text_hobby{1};
     
    %Load image, send error if not found
    char_path = strcat(pics_dir, char_image, '.png');
    try
        pic_char = imread(char_path);
    catch
        pic_char  = picNotFound;
        fprintf(writeData_intros, '%s %s', 'Error loading ', char_path, '\n');
    end
    
    %Character image
    Screen(portC,'PutImage', pic_char, portSizeC,('srcCopy'));
    Screen('CopyWindow', portC, window, portSizeC, loc_ptC);
    %This is [Name].
    Screen('TextSize', window, 50);
    DrawFormattedText(window, text_name, 'center', Y3qtr+100, black);
    %{Pronoun] likes to [hobby].
    DrawFormattedText(window, text_hobby, 'center', Y3qtr+200, black);
  
    %Display for at least 1 sec then wait for click to continue
    Screen('Flip',  window, [], 1); 
    WaitSecs(1);
    GetClicks();
    
    %Clear screen for next trial
    Screen('CopyWindow', blank, window, rect, rect);
    Screen('Flip', window, [], 1); 
    
    %Write to txt file
    fprintf(writeData_intros, strcat(repmat('%s\t', 1, 11), '\n'),... 
        num2str(subjNum), subjCode, num2str(list), trialType, num2str(x), ...
        char, char_pronoun, char_path, char_name,...
        text_name, text_hobby);
end

%% 2nd round: names + job
introOrder2 = randperm(6); %go in different random order

for x = introOrder2;
    trialType    = 'intro_job';
    char         = CharListBuffer{3}(x);
    char_pronoun = CharListBuffer{4}(x);
    char_image   = CharListBuffer{5}(x);
    char_name    = CharListBuffer{6}(x);
    text_name    = CharListBuffer{7}(x);
    text_job     = CharListBuffer{10}(x);
    %Convert from cell to string
    char=char{1}; char_pronoun=char_pronoun{1}; char_image=char_image{1}; char_name=char_name{1}; text_name=text_name{1}; text_job=text_job{1};
    
    %Load image, send error if not found
    char_path = strcat(pics_dir, char_image, '.png');
    try
        pic_char = imread(char_path);
    catch
        pic_char  = picNotFound;
        fprintf(writeData_intros, '%s %s', 'Error loading ', char_path, '\n');
    end
    
    %Character image
    Screen(portC,'PutImage', pic_char, portSizeC, ('srcCopy'));
    Screen('CopyWindow', portC, window, portSizeC, loc_ptC);
    %This is [Name].
    DrawFormattedText(window, text_name, 'center', Y3qtr+100, black);
    %{Pronoun] works as a [job].
    DrawFormattedText(window, text_job, 'center', Y3qtr+200, black);
    
    %Display for at least 1 sec then wait for click to continue
    Screen('Flip',  window, [], 1); 
    WaitSecs(1);
    GetClicks();
    
    %Clear screen for next trial
    Screen('CopyWindow', blank, window, rect, rect);
    Screen('Flip', window, [], 1); 
    
    %Write to txt file
    fprintf(writeData_intros, strcat(repmat('%s\t', 1, 11), '\n'),... 
        num2str(subjNum), subjCode, num2str(list), trialType, num2str(x),...
        char, char_pronoun, char_path, char_name,...
        text_name, text_job);
end

Screen('CloseAll');   

clear x trialType char char_image char_pronoun char_path char_name;
clear filename_intros intro_Order1 intro_Order2 pic_char;
clear text_hobby text_name text_job;