PennController.ResetPrefix()
//DebugOff()

Sequence(
    "subjInfo",
    "ins_start",
    "ins_rate",          //Acceptability/naturalness judgments
    randomize("rate_sentences"),     
	"they_familiarity",  //Familiarity with singular they
	"ins_ts",            //Gender essentialism/binary attitudes
	randomize("transphobia_scale"),   
    "demographics1",     //Demographics questions
    "demographics2",
    SendResults(),
    "end"
);

SetCounter("counter", "inc", 1);

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

newTrial("subjInfo",
    newTextInput("subjNum", "")
        .css("width", "200px")
        .cssContainer({"width": "400px", "margin-top": "1em", "margin-bottom": "1em"})
        .before(
            newText("Participant number:")
            .css({"margin-top": ".5em", "margin-bottom": ".5em", "width":"200px"}))
        .center()
        .print()
        .log()
    ,
    newTextInput("subjCode", "")
        .css("width", "200px")
        .cssContainer({"width": "400px", "margin-top": "1em", "margin-bottom": "1em"})
        .before(
            newText("Participant random code:")
            .css({"margin-top": ".5em", "margin-bottom": ".5em", "width":"200px"}))
        .center()
        .print()
        .log()
    ,
    newButton("Next")
        .wait(
            getTextInput("subjNum").test.text(/\d+/)
            .and(getTextInput("subjCode").test.text(/\w+/)))
);

newTrial("ins_start",
	newText("For the last part of this experiment, you will be asked some questions about your opinions and experiences.")
        .css({"width":"700px", "margin-top":"2em"})
		.center()
    ,
	newText("Your responses here are not linked to your name or contact information.")
        .css({"width":"700px", "margin-top":"2em", "margin-bottom":"2em"})
		.center()
    ,
    newButton("Next")
);
