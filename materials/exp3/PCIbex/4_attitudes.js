//Naturalness judgments
newTrial("ins_rate",
	newText("Please rate the following sentences.")
        .css({"margin-bottom":"2em"})
		.center()
    ,
    newButton("Next").wait()
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
    //Log trial variables
    .log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"))
    .log("List", row.group)
    .log("Type", row.type)
    .log("Sentence", row.sentence)
);


//Familarity with singular they & pronoun sharing practices
newTrial("they_familiarity1",
    newText("they", "Some people use they/them pronouns instead of he/him or she/her pronouns. An example of this is &quot;Alex raised their hand.&quot; How familiar are you with this?")
        .css({"width":"700px", "margin-top":"20px", "margin-bottom":"20px"})
		.center()
    ,
    newScale("enter_they", 
        "I use they/them pronouns for myself.",
        "I am close to someone who uses they/them pronouns.", 
        "I have met someone who uses they/them pronouns, but am not close to them.",
        "I have heard about people using they/them pronouns, but have not met someone who does.",
        "I had not heard about people using they/them pronouns before this study.")
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
).log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"));

newTrial("they_familiarity2",
    newText("they2", "Sometimes people say what kinds of gendered language they want other people to use for them. One way of doing this is saying what pronouns you use when you introduce yourself, like &quot;I’m Emily and I use she/her.&quot; How familiar are you with this?")
        .css({"width":"700px", "margin-top":"20px", "margin-bottom":"20px"})
		.center()
    ,
    newText("they3", "People tend to include their pronouns when introducing themselves in ___ of the groups I am in.")
        .css({"width":"700px", "margin-top":"20px", "margin-bottom":"20px"})
		.center()
    ,
    newScale("enter_intro_others", 
        "All",
        "Most",
        "Some",
        "A few",
        "None")
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .center()
        .print()
        .log()
    ,
    newText("they4", "I include my pronouns when introducing myself:")
        .css({"width":"700px", "margin-top":"40px", "margin-bottom":"20px"})
		.center()
    ,
    newScale("enter_intro_self", 
        "Always",
        "Usually",
        "Sometimes",
        "Rarely",
        "Never, because I prefer not to",
        "Never, because I had not heard of this before")
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .center()
        .print()
        .log()
    ,
    newButton("Next")
        .wait(getScale("enter_intro_self").test.selected()
             .and(getScale("enter_intro_others").test.selected()))
).log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"));

newTrial("they_familiarity3",
    newText("they5", "Another way of communicating what kind of gendered language you want people to use for you is by including pronouns in places where you write your name, like on nametags, display names, social media bios, and email signatures. How familiar are you with this?")
        .css({"width":"700px", "margin-top":"20px", "margin-bottom":"20px"})
		.center()
    ,
    newText("they6", "People tend to include their pronouns in places like nametags, display names, bios, and signatures in ___ of the groups I am in.")
        .css({"width":"700px", "margin-top":"20px", "margin-bottom":"20px"})
		.center()
    ,
    newScale("enter_nametags_others", 
        "All",
        "Most",
        "Some",
        "A few",
        "None")
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .center()
        .print()
        .log()
    ,
    newText("they7", "I include my pronouns in places like nametags, display names, bios, and signatures:")
        .css({"width":"700px", "margin-top":"40px", "margin-bottom":"20px"})
		.center()
    ,
    newScale("enter_nametags_self", 
        "Always",
        "Usually",
        "Sometimes",
        "Rarely",
        "Never, because I prefer not to",
        "Never, because I had not heard of this before")
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .center()
        .print()
        .log()
    ,
    newButton("Next")
        .wait(getScale("enter_nametags_self").test.selected()
              .and(getScale("enter_nametags_others").test.selected()))
).log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"));

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
    //Log trial variables
    .log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"))
    .log("Item_Code", row.code)
    .log("Item_Text", row.text)
);