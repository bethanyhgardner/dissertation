//Naturalness judgments
newTrial("ins_rate",
	newText("Please rate the following sentences.")
        .css({"margin-bottom":"2em"})
		.center()
    ,
    newButton("Next")
);

Template("stim-acceptability.csv", row=>
    newTrial("rate_sentences",
        newText(row.sentence)
            .cssContainer({"width":"700px", "margin-bottom": "50px", "margin-left":"0px", "margin-right":"0px"})
            .css({"width":"700px"})
            .center()
        ,
        newScale("rating", 7)
            .cssContainer({"width":"700px", "margin-bottom":"20px", "margin-left":"0px", "margin-right":"0px"})
            .size("700px")
            .center()
            .print()
		    .log()
	    ,
        newText("legend", "<span>1 = Very Unnatural</span><span>Very Natural = 7</span>")
            .cssContainer({"width":"700px", "margin-bottom":"50px", "margin-left":"0px", "margin-right":"0px"})
            .css({"width":"700px", "display":"flex", "justify-content": "space-between", "font-style":"italic"})
            .center()
        ,
        newButton("Next")
            .wait(getScale("rating").test.selected())
    )
    .log("List")
    .log("Type", row.type)
    .log("Sentence", row.sentence)
);


//Familarity with singular they
newTrial("they_familiarity",
    newText("they", "Some people use they/them pronouns instead of he/him or she/her pronouns. An example of this is &quot;Alex raised their hand.&quot; How familiar are you with this?")
        .css({"width":"700px", "margin-top":"20px", "margin-bottom":"20px"})
		.center()
    ,
    newScale("enter_they", 
        "I use they/them pronouns for myself.",
        "I am close to someone who uses they/them pronouns.", 
        "I have met someone who uses they/them pronouns, but am not close to them.",
        "I have heard about people using they/them pronouns, but have not met someone who does.",
        "I have not heard about people using they/them pronouns.")
        .checkbox()
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .cssContainer("height", "300px")
        .center()
        .print()
        .log()
    ,
    newButton("Next")
        .wait(getScale("enter_they").test.selected())
);

//Transphobia scale
newTrial("ins_ts",
	newText("Please indicate whether you agree or disagree with the following statements.")
        .css({"margin-bottom":"2em"})
		.center()
    ,
    newButton("Next")
);
Template("stim-transphobia.csv", row=>
    newTrial("transphobia_scale",
        newText(row.text)
            .cssContainer({"width":"700px", "margin-bottom": "50px", "margin-left":"0px", "margin-right":"0px"})
            .css({"width":"700px"})
            .center()
        ,
        newScale("ts-item", 7)
            .cssContainer({"width":"700px", "margin-bottom":"20px", "margin-left":"0px", "margin-right":"0px"})
            .size("700px")
            .center()
            .print()
		    .log()
	    ,
        newText("legend", "<span>1 = Completely Disagree</span><span>Completely Agree = 7</span>")
            .cssContainer({"width":"700px", "margin-bottom":"50px", "margin-left":"0px", "margin-right":"0px"})
            .css({"width":"700px", "display":"flex", "justify-content": "space-between", "font-style":"italic"})
            .center()
        ,
        newButton("Next")
            .wait(getScale("ts-item").test.selected())
    )
    .log("Item_Code", row.code)
    .log("Item_Text", row.text)
);

