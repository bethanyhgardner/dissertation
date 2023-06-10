PennController.ResetPrefix(null) // Keep here
DebugOff()

Sequence("intro", "consent", "catch_1", "catch_2",           //Consent form and catch questions
        "instructions_psa", "PSA",                           //PSA 
        "instructions_story", "Story1", "Story2",            //Story 1, Story 2
        "instructions_character", randomize("character"),    //Introduce character (random order)
        "instructions_math", randomize("math"),              //Math questions (random order)
        "instructions_memory", randomize("memory"),          //Memory questions (random order grouped by character)
        "instructions_production", randomize("production"),  //Production questions (random order)
        "demographics",                                      //Demographics
        "validation_1", SendResults(), "validation_2")       //Validation instructions, record results, give code  

code = (()=>([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g,a=>(a^Math.random()*16>>a/4).toString(16)))()

//Intro
newTrial("intro",
    newText("instructions", "This study involves reading PSA (public service announcement) \
    texts on various topics, reading descriptions of different people, and then answering  \
    questions about what you have read. <br><br>Please click the arrow to continue.")
        .print()
    ,
    newButton("next", "Next")
        .print()
        .wait()
)

//Consent form
newTrial("consent",
    newHtml("consent_form", "consent.html")
        .center()
        .print()
    ,
    newText("consent_question", "I have read this informed consent document and the material \
    contained in it has been explained to me verbally. All my questions have been answered, \
    and I freely and voluntarily choose to participate.")
        .css("width", "600px")
        .left()
        .print()
    ,
    newScale("consent_answer", "I want to participate in this study.", 
            "I do not wish to participate in this study.")
        .radio()
        .labelsPosition("right")
        .vertical()
        .css("width", "600px")
        .print()
        .wait()
        .test.selected("I do not wish to participate in this study.")
        .success(
            clear()
            ,
            newText("leave", "You indicated that you did not want to participate in this study, so it will not begin.")
                .print()
            ,
            SendResults()
            ,
            newButton().wait()
        )
) 

//Catch trial 1
newTrial("catch_1",
    newText("catch_text", "Add 2 to 4, and type the answer out in lower-case word form.")
        .print()
    ,
    newTextInput("catch_answer", "")
        .center()
        .lines(0)
        .size(100, 30)
        .print()
    ,
    newButton("next", "Next")
        .print()
        .wait(getTextInput("catch_answer").test.text(/six/))
)

//Catch trial 2
newTrial("catch_2",
    newText("catch2_text", "Type the word that you hear in upper case.")
        .print()
    ,
    newAudio("catch2_audio", "catch_word.mp3")
        .center()
        .print()
        .wait()
    ,
    newTextInput("catch2_answer", "")
        .center()
        .lines(0)
        .size(200, 30)
        .print()
    ,
    newButton("next", "Next")
        .print()
        .wait(getTextInput("catch2_answer").test.text(/LANGUAGE/))
)

//Instructions: PSA 
newTrial("instructions_psa",
    newText("instructions", "In this study, you will read three different kinds of texts. \
    Please read each one carefully. <br><brFirst, you'll see an informational article.")
        .print()
    ,
    newButton("next", "Next")
        .print()
        .wait()
)

//PSA 
Template("stimuli_training.csv", row =>
    newTrial("PSA",
        newHtml("PSA_text", row.psa)
            .print()
        ,
        newTimer("wait", "20000")
            .start()
            .wait()
        ,
        newButton("next", "Next")
            .print()
            .wait()
    ) 
)

//Instructions: stories
newTrial("instructions_story",
    newText("instructions", "Next, please read the following short biographies.")
        .print()
    ,
    newButton("next", "Next")
        .print()
        .wait()
)

//Story 1
Template("stimuli_training.csv", row =>
    newTrial("Story1",
        newHtml("story1_text", row.story1)
            .print()
        ,
        newTimer("wait", "20000")
            .start()
            .wait()
        ,
        newButton("next", "Next")
            .print()
            .wait()
    ) 
)

//Story 2
Template("stimuli_training.csv", row =>
    newTrial("Story2",
        newHtml("story2_text", row.story2)
            .print()
        ,
        newTimer("wait", "20000")
            .start()
            .wait()
        ,
        newButton("next", "Next")
            .print()
            .wait()
    ) 
)

//Instructions: introduce characters
newTrial("instructions_character",
    newText("instructions", "Now, you're going to meet 12 different people. For each person, \
    you'll see their name and a few facts about them. Please read these descriptions carefully.")
        .print()
    ,
    newButton("next", "Next")
        .print()
        .wait()
)

//Characters
Template("stimuli_characters.csv", row => 
    newTrial("character",
        newText("stim", row.introduction)
            .center()
            .print()
        ,
        newTimer("wait", "2000")
            .start()
            .wait()
        ,
        newButton("next", "Next")
            .print()
            .wait() 
    )
) 

//Instructions: math 
newTrial("instructions_math",
    newText("instructions", "In the following section, you will be asked to solve a series \
    of math questions.  Please do your best to arrive at the correct answer.  You may use \
    scratch paper, but no calculators.")
        .print()
    ,
    newButton("start", "Next")
        .print()
        .wait()
)

//Math
Template("math.csv", row =>
    newTrial("math",
        newText("question", row.question)
        ,
        newTextInput("answer", "")
            .before(getText("question"))
            .center()
            .lines(0)
            .size(100, 30)
            .print()
            .log()
        ,
        newButton("next", "Next")
            .print()
            .wait(getTextInput("answer").test.text(/^(?!\s*$).+/))
    )
)

//Instructions: memory
newTrial("instructions_memory",
    newText("instructions", "Now, we're going to ask some questions about the people you met. \
    Please answer, trying to remember as best you can. If you can't remember, please make \
    your best guess.")
        .center()
        .print()
    ,
    newButton("start", "Next")
        .print()
        .wait()
)

//Memory
Template("stimuli_characters.csv", row =>
    newTrial("memory",
        defaultText
            .css("width", "350px")
            .left()
            .print()
        ,
        newText("job_prompt", row.memory_job)
        ,
        newDropDown("job_answers", "")
            .add("engineer", "Uber driver", "food service", "mechanic", "teacher", "accountant", 
            "retail", "janitor", "IT", "nurse", "doctor", "sales")
            .before(getText("job_prompt"))
            .shuffle()
            .print()
            .log()
        ,
        newText("pet_prompt", row.memory_pet)
        ,
        newDropDown("pet_answers", "")
            .add("cat", "dog", "fish")
            .before(getText("pet_prompt"))
            .shuffle()
            .print()
            .log()
        ,
        newText("pronoun_prompt", row.memory_pronoun)
        ,
        newDropDown("pronoun_answers", "")
            .add("he/him", "she/her", "they/them")
            .before(getText("pronoun_prompt"))
            .shuffle()
            .print()
            .log()
        ,
        newButton("next", "Next")
            .print()
            .wait(getDropDown("job_answers").test.selected() 
                .and(getDropDown("pet_answers").test.selected()) 
                .and(getDropDown("pronoun_answers").test.selected())) 
    )
    .log("list", row.group)
    .log("condition", row.condition)
    .log("name", row.name)
    .log("pronoun", row.pronoun)
    .log("job", row.job)
    .log("pet", row.pet)
    .log("subj_code", code)
)

//Instructions: production
newTrial("instructions_production",
    newText("instructions", "Next, you will see the beginning of a sentence. Please write \
    an ending to the sentence in a way that makes sense to you. <br><br>For example: \
    <br><br>After Thomas got home from working as a personal trainer... \
    <br>...he made dinner.")
        .left()
        .print()
    ,
    newButton("start", "Next")
        .print()
        .wait()
)

//Production
Template("stimuli_characters.csv", row =>
    newTrial("production",
        defaultText
            .left()
            .css("width", "450px")
            .print()
        ,
        newText("instruction", "Please write an ending to the sentence in a way that makes sense to you.")
        ,
        newText("prompt", row.production)
        ,
        newTextInput("sentence", "")
            .lines(0)
            .size(425, 100)
            .print()
            .log()
        ,
        newButton("next", "Next")
            .print()
            .wait(getTextInput("sentence").test.text(/^(?!\s*$).+/))
    )
    .log("list", row.group)
    .log("condition", row.condition)
    .log("name", row.name)
    .log("pronoun", row.pronoun)
    .log("job", row.job)
    .log("pet", row.pet)
    .log("subj_code", code)
)

//Demographics
newTrial("demographics",
    newText("instructions", "To wrap up, please answer these demographic questions.")
        .css("width", "700px")
        .left()
        .print()
    ,
    newText("age", "Age:")
        .css("width", "150px")
        .left()
    ,
    newTextInput("enter_age", "")
        .before(getText("age"))
        .css("width", "300px")
        .print()
        .log()
    ,
    newText("gender", "Gender:")
        .css("width", "150px")
        .left()
    ,
    newTextInput("enter_gender", "")
        .before(getText("gender"))
        .css("width", "300px")
        .print()
        .log()
    ,
    newText("english", "Please rate your overall ability in the English language:")
        .css("width", "700px")
        .left()
        .print()
    ,
    newScale("enter_english", "Native (learned from birth)",
    "Fully competent in speaking, listening, reading, and writing, but not native", 
    "Limited but adequate competence in speaking, reading, and writing", 
    "Restricted ability (e.g. only reading or speaking/listening)", 
    "Some familiarity (e.g. a year of instruction in school)")
        .radio()
        .labelsPosition("right")
        .css("width", "700px")
        .vertical()
        .print()
        .log()
    ,
    newText("turkID", "MTurk ID:")
        .css("width", "150px")
        .left()
    ,
    newTextInput("enter_turkID", "")
        .before(getText("turkID"))
        .css("width", "300px")
        .print()
        .log()
    ,
    newButton("next", "Next")
        .print()
        .wait(getTextInput("enter_age").test.text(/^(?!\s*$).+/)
            .and(getTextInput("enter_gender").test.text(/^(?!\s*$).+/))
            .and(getTextInput("enter_turkID").test.text(/^(?!\s*$).+/))
            .and(getScale("enter_english").test.selected()))
)

//Validation 

newTrial("validation_1",
    newText("validation", "Thank you for participating in this study! We are studying      \
    how people learn facts about others. <br><br> If you have any questions or concerns,   \
    please email the requester through MTurk. <br><br> To get credit, please enter \
    this validation code in MTurk.")
        .print() 
    ,
    newButton("next", "Get validation code")
        .print()
        .wait()
)

newTrial("validation_2",
    newText("Your code is: ")
        .print()
    ,
    newText(code)
        .bold()
        .print()
    ,
    newButton("next", "Finish")
        .print()
        .wait()
)
code=undefined