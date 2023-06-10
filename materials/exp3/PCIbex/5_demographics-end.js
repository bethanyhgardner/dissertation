//Demographics questions: age, sex, gender, sexuality
//race, ethnicity, education, English ability

newTrial("demographics1",
    newText("To wrap up, please answer these demographic questions.")
        .css({"width":"700px", "margin-top":"2em", "margin-bottom":"2em"})
		.center()
	,
	newText("Age:")
        .css({"width":"700px", "margin-top":"2em"})
		.center()
    ,
    newTextInput("enter_age", "")
        .css("width", "200px")
        .cssContainer({"width":"700px" , "margin-top":"5px"})
        .center()
        .print()
        .log()
    ,
    newText("What is your gender?")
        .css({"width":"700px", "margin-top":"2em"})
		.center()
    ,
    newTextInput("enter_gender", "")
        .css("width", "200px")
        .cssContainer({"width":"700px" , "margin-top":"5px"})
        .center()
        .print()
        .log()
    ,
    newText("<i>(Check all that apply.)</i>")
        .css({"width":"700px", "margin-top":"1em", "margin-bottom":"1em"})
		.center()
    ,
    newScale("enter_trans",
        "My gender is the same as what was written on my original birth certificate", 
        "My gender is different than what was written on my original birth certificate", 
        "I consider myself cisgender",
        "I consider myself transgender",
        "I don't consider myself cisgender or transgender",
        "Prefer not to answer")
        .checkbox()
        .vertical()
        .center()
        .print()
        .cssContainer("width", "700px")
        .log()
    ,
    newText("How do you describe your sexuality? <br><i>(Check all that apply.)</i>")
        .css({"width":"700px", "margin-top":"2em", "margin-bottom":"1em"})
		.center()
    ,
    newScale("enter_sexuality",
        "Asexual", "Bisexual/Pansexual", "Gay/Lesbian",
        "Heterosexual/Straight", "Queer", "Questioning",
        "Prefer not to answer", "I use a different term:")
        .checkbox()
        .vertical()
        .center()
        .print()
        .cssContainer("width", "700px")
        .log()
    ,
    newTextInput("sexuality_writein", "") 
        .css("width", "300px")
        .cssContainer({"width":"700px", "margin-top":"5px"})
        .center()
        .print()
        .print()
        .log()
	,
	newButton("Next")
        .wait(getTextInput("enter_age").test.text(/\d+/)
            .and(getTextInput("enter_gender").test.text(/\w+/))
            .and(getScale("enter_trans").test.selected())
            .and(getScale("enter_sexuality").test.selected))
).log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"));

newTrial("demographics2",
    newText("race", "How do you describe your race/ethnicity? <br><i>(Check all that apply.)</i>")
        .css({"width":"700px", "margin-top":"2em", "margin-bottom":"1em"})
		.center()
    ,
    newScale("enter_race", 
        "American Indian or Alaska Native", 
        "Asian",
        "Black, African American, or African", 
        "Hispanic, Latino, or Spanish",
        "Middle Eastern or North African",
        "Native Hawaiian or Pacific Islander",
        "White", 
        "Prefer not to answer", 
        "I use a different term:")
        .checkbox()
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .center()
        .print()
        .log()
    ,
    newTextInput("enter_race_writein", "")
        .css("width", "300px")
        .cssContainer({"width":"700px", "margin-top":"5px"})
        .center()
        .print()
        .print()
        .log()
    ,
    newText("What is your highest education level?")
        .css({"width":"700px", "margin-top":"2em", "margin-bottom":"1em"})
		.center()
	,
	newScale("enter_ed",
	    "Less than high school", "High school graduate", "Some college",  
        "2 year degree", "4 year degree", "Professional degree",
        "Doctorate", "Prefer not to answer")
        .radio()
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .center()
        .print()
        .log()
    ,
    newText("english", "Please rate your overall ability in the English language:")
        .css({"width":"700px", "margin-top":"2em", "margin-bottom":"1em"})
		.center()
    ,
    newScale("enter_english", 
        "Native (learned from birth)",
        "Fully competent in speaking, listening, reading, and writing, but not native", 
        "Limited but adequate competence in speaking, reading, and writing", 
        "Restricted ability (e.g., only reading or speaking/listening)", 
        "Some familiarity (e.g., a year of instruction in school)",
        "Prefer not to answer")
        .radio()
        .labelsPosition("right")
        .vertical()
        .cssContainer("width", "700px")
        .center()
        .print()
        .log()
    ,
    newButton("Next")
        .wait(getScale("enter_race").test.selected()
            .and(getScale("enter_english").test.selected())
            .and(getScale("enter_ed").test.selected()))
).log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"));

//Validation 
newTrial("confirmation_prolific" ,
    newText("<p>Thank you for your participation!</p>")
        .center().print()
    ,
    newText("<p><a href='https://app.prolific.co/submissions/complete?cc=C8KOMGVM'>Click here to validate your submission</a></p>")
        .center().print()
    ,
    newButton("void", "")
        .wait()
);