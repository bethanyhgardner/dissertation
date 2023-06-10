% Last edited: Bethany Gardner, 10/2022. Data collection version.

% Sets up screen dimensions with 6 image ports and opens screen in Psychtoolbox
% Called at beginning of other scripts
% More details in main script, they4.m

%% SCREEN 

oldLevel = Screen('Preference', 'Verbosity', 0); %reduce warnings
Screen('Preference', 'SkipSyncTests', 2);

%Start psychtoolbox window
[window, ~] = Screen('OpenWindow', 0, white); %set up graphics (rect is the size of the window and the 0 is just to make it the default monitor)
Screen('TextSize', window, 40);
Screen('TextFont', window, 'Arial');
[window, rect] = Screen('OpenWindow', max(Screen('Screens')), white); %set up graphics (rect is the size of the window and the 0 is just to make it the window)
Screen('BlendFunction', window, GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); %this command enables alpha blending, which is necessary for transparent images

%Screen('Preference','VBLTimestampingMode',-1); %This setting can be turned on if you have video driver problems.
warning off MATLAB:DeprecatedLogicalAPI
warning('off','MATLAB:dispatcher:InexactMatch')

%% PORTS

%Screen dimensions
Xleft   = rect(RectLeft);
Xright  = rect(RectRight);
Ytop    = rect(RectTop);
Ybottom = rect(RectBottom);
Xcenter = Xright  / 2;
Ycenter = Ybottom / 2;
Xqtr    = Xright  / 4;
Yqtr    = Ybottom / 4;
X3qtr   = Xright  - Xqtr;
Y3qtr   = Ybottom - Yqtr;

%Image port sizes
portSize  = [0 0 320 341]; %Size of images in 6-char displays
portSizeC = [0 0 500 500]; %Size of images in 1-char displays

%Draw baby (off-screen) windows
port1 = Screen(window,'OpenoffscreenWindow', white, portSize);
port2 = Screen(window,'OpenoffscreenWindow', white, portSize);
port3 = Screen(window,'OpenoffscreenWindow', white, portSize);
port4 = Screen(window,'OpenoffscreenWindow', white, portSize);
port5 = Screen(window,'OpenoffscreenWindow', white, portSize);
port6 = Screen(window,'OpenoffscreenWindow', white, portSize);
portC = Screen(window,'OpenoffscreenWindow', white, portSizeC);
blank = Screen(window,'OpenoffscreenWindow', white, rect);

%Port locations
pt1 = [Xqtr-160,    Yqtr-170,    Xqtr+160,    Yqtr+170];   %top left
pt2 = [Xcenter-160, Yqtr-170,    Xcenter+160, Yqtr+170];   %top center
pt3 = [X3qtr-160,   Yqtr-170,    X3qtr+160,   Yqtr+170];   %top right
pt4 = [Xqtr-160,    Y3qtr-170,   Xqtr+160,    Y3qtr+170];  %bottom left
pt5 = [Xcenter-160, Y3qtr-170,   Xcenter+160, Y3qtr+170];  %bottom center
pt6 = [X3qtr-160,   Y3qtr-170,   X3qtr+160,   Y3qtr+170];  %bottom right
loc_ptC = [Xcenter-250, Ycenter-250, Xcenter+250, Ycenter+250];%larger image centered

%YES/NO box locations
BottomLeftBox  = [Xleft+25,   Ybottom-150, Xleft+225, Ybottom-25]; %200x125, 25 away from edges
BottomRightBox = [Xright-225, Ybottom-150, Xright-25, Ybottom-25];
