% Last edited: Bethany Gardner, 10/2022. Data collection version.

% Tests whether particpants can match 6 character images when prompted with the names.
% Shows correct answer, and repeats until they get all 6 correct in one block.
% More details in main script, they4.m

%% PRETEST

startScreen

%% Instructions
Screen('TextSize', window, 50);
DrawFormattedText(window,... 
    'Now, you will be tested about the names of the 6 characters. \nTo move on, you need to get all 6 characters correct.',... 
    'center', 'center', black);
Screen('Flip',  window, [], 1); %Show instructions
WaitSecs(2);

Screen('TextSize', window, 30);
DrawFormattedText(window, '(Click to continue)', 'center', Y3qtr, grey);
Screen('Flip',  window, [], 1); %Click to continue
GetClicks();
    
Screen('CopyWindow', blank, window, rect, rect);
Screen('Flip', window, [], 1); %Clear 

%% Get images
char1      = CharListBuffer{5}(1);
char1_path = strcat(pics_dir, CharListBuffer{5}(1), '.png');
char1 = char1{1}; char1_path = char1_path{1};
try
    pic_char1 = imread(char1_path);
catch
    pic_char1 = picNotFound;
    fprintf(writeData_charTest, '%s %s', 'Error loading ', char_path, '\n');
end
char2      = CharListBuffer{5}(2);
char2_path = strcat(pics_dir, CharListBuffer{5}(2), '.png');
char2 = char2{1}; char2_path = char2_path{1};
try
    pic_char2 = imread(char2_path);
catch
    pic_char2 = picNotFound;
    fprintf(writeData_charTest, '%s %s', 'Error loading ', char_path, '\n');
end
char3      = CharListBuffer{5}(3);
char3_path = strcat(pics_dir, CharListBuffer{5}(3), '.png');
char3 = char3{1}; char3_path = char3_path{1};
try
    pic_char3 = imread(char3_path);
catch
    pic_char3 = picNotFound;
    fprintf(writeData_charTest, '%s %s', 'Error loading ', char_path, '\n');
end
char4      = CharListBuffer{5}(4);
char4_path = strcat(pics_dir, CharListBuffer{5}(4), '.png');
char4 = char4{1}; char4_path = char4_path{1};
try
    pic_char4 = imread(char4_path);
catch
    pic_char4 = picNotFound;
    fprintf(writeData_charTest, '%s %s', 'Error loading ', char_path, '\n');
end
char5      = CharListBuffer{5}(5);
char5_path = strcat(pics_dir, CharListBuffer{5}(5), '.png');
char5 = char5{1}; char5_path = char5_path{1};
try
    pic_char5 = imread(char5_path);
catch
    pic_char5 = picNotFound;
    fprintf(writeData_charTest, '%s %s', 'Error loading ', char_path, '\n');
end
char6      = CharListBuffer{5}(6);
char6_path = strcat(pics_dir, CharListBuffer{5}(6), '.png');
char6 = char6{1}; char6_path = char6_path{1};
try
    pic_char6 = imread(char6_path);
catch
    pic_char6 = picNotFound;
    fprintf(writeData_charTest, '%s %s', 'Error loading ', char_path, '\n');
end

 %% Go through set of characters
nTestRounds = 1;
nCorrect    = -1;
while nCorrect ~= 6 %Continue until all 6 in one round are correct
    nCorrect     = 0;
    pretestOrder = randperm(6);  %New order each round
    for x = pretestOrder;   
        %% ~~Trial info
        trialType    = 'pretest';
        char         = CharListBuffer{3}(x);
        char_pronoun = CharListBuffer{4}(x);
        char_image   = CharListBuffer{5}(x);
        char_name    = CharListBuffer{6}(x);
        char_is      = CharListBuffer{8}(x);
        target_path  = strcat(pics_dir, char_image, '.png');
        %Convert from cell to string
        char=char{1}; char_pronoun=char_pronoun{1}; char_image=char_image{1}; char_name=char_name{1}; char_is = char_is{1}; target_path = target_path{1};

        %% ~~Image locations
        %Put images onto baby windows
        Screen(port1,'PutImage', pic_char1, portSize,('srcCopy'));
        Screen(port2,'PutImage', pic_char2, portSize,('srcCopy'));
        Screen(port3,'PutImage', pic_char3, portSize,('srcCopy'));
        Screen(port4,'PutImage', pic_char4, portSize,('srcCopy'));
        Screen(port5,'PutImage', pic_char5, portSize,('srcCopy'));
        Screen(port6,'PutImage', pic_char6, portSize,('srcCopy'));

        %Randomize image locations
        randport = randperm(6);
        rpt1 = eval(['pt' num2str(randport(1))]);
        rpt2 = eval(['pt' num2str(randport(2))]);
        rpt3 = eval(['pt' num2str(randport(3))]);
        rpt4 = eval(['pt' num2str(randport(4))]);
        rpt5 = eval(['pt' num2str(randport(5))]);
        rpt6 = eval(['pt' num2str(randport(6))]);

        %Save what those image locations are
        loc_char1 = ['pt', num2str(randport(1))];
        loc_char2 = ['pt', num2str(randport(2))];
        loc_char3 = ['pt', num2str(randport(3))];
        loc_char4 = ['pt', num2str(randport(4))];
        loc_char5 = ['pt', num2str(randport(5))];
        loc_char6 = ['pt', num2str(randport(6))];

        %Target location
        if strcmp(char_image, char1)
            target     = char1;
            loc_target = loc_char1;
            pic_target = pic_char1;
        elseif strcmp(char_image, char2)
            target     = char2;
            loc_target = loc_char2;
            pic_target = pic_char2;
        elseif strcmp(char_image, char3)
            target     = char3;
            loc_target = loc_char3;
            pic_target = pic_char3;
        elseif strcmp(char_image, char4)
            target     = char4;
            loc_target = loc_char4;
            pic_target = pic_char4;
        elseif strcmp(char_image, char5)
            target     = char5;
            loc_target = loc_char5;
            pic_target = pic_char5;
        elseif strcmp(char_image, char6)
            target     = char6;
            loc_target = loc_char6;
            pic_target = pic_char6;
        else
            target     = 'error';
            loc_target = 'error';
            pic_target = picNotFound;
        end

        %Put 6 small screens onto full screen
        Screen('CopyWindow', port1, window, portSize, rpt1);
        Screen('CopyWindow', port2, window, portSize, rpt2);
        Screen('CopyWindow', port3, window, portSize, rpt3);
        Screen('CopyWindow', port4, window, portSize, rpt4);
        Screen('CopyWindow', port5, window, portSize, rpt5);
        Screen('CopyWindow', port6, window, portSize, rpt6);

        %% ~~Get prompt & flip
        %Write target name
        text_clickOn = ['Click on ', char_name, '.']; %brackets preserve trailing spaces     
        Screen('TextSize', window, 50);
        DrawFormattedText(window, text_clickOn, 'center', Y3qtr+250, black);
        Screen('Flip',  window, [], 1); %Display for at least 1 sec then wait for click to continue

        %% ~~Response accuracy
        %Which port was clicked on
        [nClicks, clickX, clickY] = GetClicks(window);
        if any(nClicks)
            if clickY < ((rect(4))/2) %if they clicked the top row
                if clickX < Xqtr+160 %if they clicked top left (port 1)
                    loc_click = 'pt1'; %top left
                elseif clickX > X3qtr-160 %top right
                    loc_click = 'pt3'; %top right
                else
                    loc_click = 'pt2'; %top center
                end
            else %if they clicked the bottom row
                if clickX < Xqtr+160 %if they clicked bottom left (port 4)
                    loc_click = 'pt4'; %bottom left
                elseif clickX > X3qtr-160 % right
                    loc_click = 'pt6'; %bottom right
                else
                    loc_click = 'pt5'; %bottom center
                end
            end
        end

        %Check accuracy
        acc = -1;
        if strcmp(loc_click, loc_target)
            acc          = 1;
            nCorrect     = nCorrect + 1;
            char_clicked = target;
            pic_clicked  = pic_target;
        else
            acc = 0;
            %Figure out which character was clicked on instead
            if strcmp(loc_click, loc_char1)
               char_clicked = char1;
               pic_clicked  = pic_char1;
            elseif strcmp(loc_click, loc_char2)
               char_clicked = char2;
               pic_clicked  = pic_char2;
            elseif strcmp(loc_click, loc_char3)
               char_clicked = char3;
               pic_clicked  = pic_char3;
            elseif strcmp(loc_click, loc_char4)
               char_clicked = char4;
               pic_clicked  = pic_char4;
            elseif strcmp(loc_click, loc_char5)
               char_clicked = char5;
               pic_clicked  = pic_char5;
            elseif strcmp(loc_click, loc_char6)
               char_clicked = char6;
               pic_clicked  = pic_char6;
            else
               char_clicked = 'error';
               pic_clicked  = picNotFound;
            end
        end

        %% ~~Trial feedback
        Screen('CopyWindow', blank, window, rect, rect);
        Screen('Flip', window, [], 1); 
        feedback_text_target = '';
        feedback_text_wrong  = '';

        %Right answer
        if acc == 1
            %Display target image
            Screen(portC,'PutImage', pic_target, portSizeC, ('srcCopy'));     
            Screen('CopyWindow', portC, window, portSizeC, loc_ptC);

            %Correct, [pronoun] is [name]
            feedback_text_target = ['Correct, ', char_is];
            Screen('TextSize', window, 50);
            DrawFormattedText(window, feedback_text_target, 'center', Y3qtr+200, black);

            Screen('Flip',  window, [], 1); 
            GetClicks(); %Wait for click to continue

        %Wrong answer 
        else
            %Display image that was clicked on
            Screen(portC,'PutImage', pic_clicked, portSizeC, ('srcCopy'));  
            Screen('CopyWindow', portC, window, portSizeC, loc_ptC);

            %Incorrect, [pronoun] is [name]
            for i = [1:6]
                if strcmp(char_clicked, CharListBuffer{5}(i))
                    clicked_is = CharListBuffer{8}(i);
                end
            end
            clicked_is = clicked_is{1};
            feedback_text_wrong = ['Incorrect, ', clicked_is];
            Screen('TextSize', window, 50);
            DrawFormattedText(window, feedback_text_wrong, 'center', Y3qtr+200, black);

            Screen('Flip', window, [], 1); 
            GetClicks(); %Wait for click to continue, reset screen 
            Screen('CopyWindow', blank, window, rect, rect);
            Screen('Flip', window, [], 1); 

            %Display target image
            Screen(portC,'PutImage', pic_target, portSizeC, ('srcCopy'));     
            Screen('CopyWindow', portC, window, portSizeC, loc_ptC);

            %And [pronoun] is [name]
            feedback_text_target = ['And ', char_is];
            Screen('TextSize', window, 50);
            DrawFormattedText(window, feedback_text_target, 'center', Y3qtr+200, black);

            Screen('Flip', window, [], 1); 
            GetClicks(); %Wait for click to continue    
        end

        %Clear screen for next trial
        Screen('CopyWindow', blank, window, rect, rect);
        Screen('Flip', window, [], 1); 

        %% ~~Write data
        fprintf(writeData_charTest, strcat(repmat('%s\t', 1, 29), '\n'),... 
             num2str(subjNum), subjCode, num2str(list), trialType, num2str(nTestRounds), num2str(x),...
             char, char_pronoun, char_image, char_name,...     
             char1, loc_char1, char2, loc_char2,...            
             char3, loc_char3, char4, loc_char4,...            
             char5, loc_char5, char6, loc_char6,...            
             target, loc_target, char_clicked, loc_click,... 
             num2str(acc), feedback_text_target, feedback_text_wrong);   
    end

    %% N correct in round
    n_text = ['You got ', num2str(nCorrect), ' out of 6 correct.'];
    Screen('TextSize', window, 50);
    DrawFormattedText(window, n_text, 'center', 'center', black);
    Screen('Flip', window, [], 1); 
    GetClicks();

    nTestRounds = nTestRounds + 1;
    Screen('CopyWindow', blank, window, rect, rect);
    Screen('Flip', window, [], 1); 
end

Screen('CloseAll');    

clear acc char char1 char1_path char2 char2_path char3 char3_path;
clear char4 char4_path char5 char5_path char6 char6_path char_clicked;
clear char_image char_is char_name char_pronoun clickX clickY;
clear feedback_text_target feedback_text_wrong loc_char1 loc_char2;
clear loc_char3 loc_char4 loc_char5 loc_char6 loc_click loc_target n_text;
clear nClicks nCorrect nTestRounds pic_char1 pic_char2 pic_char3 pic_char4;
clear pic_char5 pic_char6 pic_clicked pic_target pretestOrder;
clear target target_path text_clickOn;