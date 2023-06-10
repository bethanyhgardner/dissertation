PennController.ResetPrefix(null); 
DebugOff();

Sequence(
	//SETUP
    "instructions_start",  //Instructions about the study
    "consent",             //Consent form
    "catch_trials",        //Catch trials
    "init",                //Get microphone permission
    "mic_test",            //Test microphone
    "counter",             //Increment group assignment counter at start, not end 
	//EXPERIMENT
    "instructions_characters",      //Introduce characters
    randomize("characters"),
    "instructions_example_trials",  //Example trials
    randomize("trials_example"),
    "instructions_practice",        //Practice trials
    sepWith("sync", randomize("trials_practice")),
    "instructions_test",            //Test trials
    sepWith("sync", randomize("trials_test")), "sync",
    //ATTITUDE QUESTIONS
    "ins_rate",                     //Acceptability/naturalness judgments
	randomize("rate_sentences"),    
	"they_familiarity1",            //Familiarity with singular they
	"they_familiarity2",            //and pronoun-sharing practices
	"they_familiarity3",
	"ins_ts",                       //Gender essentialism/binary attitudes
	randomize("transphobia_scale"),       
    //DEMOGRAPHICS, END
    "demographics1",        //Demographics questions
    "demographics2",
    SendResults(),          //Send results
    "confirmation_prolific" //Prolific credit
);

//Load images
PreloadZip("https://they-stim.s3.us-east-2.amazonaws.com/exp3_images.zip");

//Increment group counter at beginning
SetCounter("counter", "inc", 1);

//Send sound files to AWS
InitiateRecorder("https://errk1b63e4.execute-api.us-east-2.amazonaws.com/default/collectAudio").label("init");

//Trial to upload recordings, then continue automatically.
UploadRecordings("sync","noblock");

//Default formatting
Header(
    defaultHtml
        .center()
        .print(),
    defaultButton
        .center()
        .print(),
    defaultText
        .print()
);