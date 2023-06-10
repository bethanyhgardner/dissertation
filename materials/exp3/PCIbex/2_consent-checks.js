//Intro Instructions
newTrial("instructions_start",
    newHtml("instructions_start", "ins_start.html"),
    newButton("Start").wait()
);

//Consent form
newTrial("consent",
    newImage("consent1", "Stamped-ICDOnline-1_small.png").center().print(),
    newImage("consent2", "Stamped-ICDOnline-2_small.png").center().print(),
    newImage("consent3", "Stamped-ICDOnline-3_small.png").center().print(),
    newImage("consent4", "Stamped-ICDOnline-4_small.png").center().print(),
    newText("consent_question", "I have read this informed consent document and the material \
    contained in it has been explained to me verbally. All my questions have been answered, \
    and I freely and voluntarily choose to participate.")
        .center()
        .css("width", "800px")
        .cssContainer("width", "800px")
        .css("margin-bottom", "50px")
    ,
    newScale("consent_answer", "I want to participate in this study.", 
            "I do not wish to participate in this study.")
        .radio()
        .labelsPosition("right")
        .vertical()
        .center()
        .css("width", "800px")
        .cssContainer("width", "800px")
        .print()
        .wait()
        .test.selected("I do not wish to participate in this study.")
        .success(
            clear(),
            newText("leave", "You indicated that you did not want to participate in this study, so it will not begin."),
            SendResults(),
            newButton().remove().wait()
        )
); 

//Catch trials
newTrial("catch_trials",
    newText("catch1_text", "Add 2 to 4, and type the answer out in lower-case word form.")
        .center()
    ,
    newTextInput("catch_answer", "")
        .center()
        .lines(0)
        .size(100, 30)
        .print()
    ,
    newText("catch2_text", "Type the word that you hear in upper case.")
        .center()
        .css("margin-top", "50px")
        .css("margin-bottom", "15px")
    ,
    newAudio("catch2_audio", "catch_word.mp3")
        .center()
        .print()
    ,
    newTextInput("catch2_answer", "")
        .center()
        .lines(0)
        .size(200, 30)
        .print()
    ,
    newButton("next", "Next")
        .wait(getTextInput("catch_answer").test.text(/six/)
        .and(getTextInput("catch2_answer").test.text(/LANGUAGE/)))
        
);

newTrial("mic_test",
    newHtml("mic_test", "ins_mic-test.html")
        .css("width", "30em")
    ,
    newScale("mic_working", "Continue", 
            "I can't or don't want to record audio")
        .radio()
        .css("min-width", "30em")
        .center()
        .labelsPosition("right")
        .vertical()
        .print()
        .wait()
        .test.selected("I can't or don't want to record audio")
        .success(
            clear(),
            newText("leave", "You indicated that you can't record audio, so the study will not begin."),
            SendResults(),
            newButton().hidden().wait())
    ,
    getScale("mic_working").remove(),
    
    newMediaRecorder(GetURLParameter("PROLIFIC_ID")+"_"+"test-mic", "audio")
        .center()
        .print()
        .record()
        .wait("playback")
    ,
    newScale("mic_working2", "My mic is working", 
            "I can't or don't want to record audio")
        .radio()
        .css("min-width", "30em")
        .center()
        .labelsPosition("right")
        .vertical()
        .print()
        .wait()
        .test.selected("I can't or don't want to record audio")
        .success(
            clear(),
            newText("leave", "You indicated that you can't record audio, so the study will not begin."),
            SendResults(),
            newButton().remove().wait())
);