//Introduce characters 
newTrial("instructions_characters",
    newHtml("instructions_characters", "ins_characters.html"),
    newButton("Start").wait()
);

Template("stim-char.csv", row=>
    newTrial("characters", 
        //Load images
        newImage("char", row.target_file).size(400,400),
        newImage("brother", row.brother).size(400,400),
        newImage("sister", row.sister).size(400,400)
        ,
        //Character
        newCanvas("screen", 1100, 400)  //Character image
            .center()
            .add("center at 50%", "middle at 50%", getImage("char"))
            .print(),
        newTimer("timer1s", 1000)      //Wait for 1s
            .start()
            .wait(),
        newText("text_intro",         //"This is _ (who uses __ pronouns)."
            row.text1_name + row.text1_pronouns)
            .center()
            .css("font-size", "2em")
            .css("margin-top", "25px"),  
        newTimer("timer2s", 2000)     //Wait for 2s
            .start()
            .wait(),
        newButton("i1"," Next").wait().remove(), //Move to next screen    
        getText("text_intro").remove(),
        
        //Job + pet facts
        newText("text_jobPet", row.text2_job + " " + row.text3_pet) 
            .center()
            .css("font-size", "2em")
            .css("margin-top", "25px"),  
        getTimer("timer2s").start().wait(),
        newButton("Next").wait().remove(), //Move to next screen    
        getText("text_jobPet").remove(),
        getImage("char").remove(),
        
        //Brother
        getCanvas("screen")            //Character and brother images
            .add("center at 30%", "middle at 50%", getImage("char"))
            .add("center at 70%", "middle at 50%", getImage("brother"))
            .refresh(),
        getTimer("timer1s")            //Wait for 1s
            .start()
            .wait(),                  //[pronoun] has/have a brother
        newText("text_brother", row.text4_brother)
            .center()
            .css("font-size", "2em")
            .css("margin-top", "25px"),  
        getTimer("timer2s")           //Wait for 2s
            .start()
            .wait(), 
        newButton("Next").wait().remove(), //Move to next screen    
        getImage("brother").remove(),
        getText("text_brother").remove(),
        
        //Sister
        getCanvas("screen")            //Sister image
            .add("center at 70%", "middle at 50%", getImage("sister"))
            .refresh(),
        getTimer("timer1s")            //Wait for 1s
            .start()
            .wait(),                   //"[pronoun] has/have a sister"
        newText("text_sister", row.text5_sister)
            .center()
            .css("font-size", "2em")
            .css("margin-top", "25px"),  
        getTimer("timer2s")           //Wait for 2s
            .start()
            .wait(), 
        newButton("Next").wait(),     //Move to next trial
        clear()
    )
    //Log trial variables
    .log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"))
    .log("Condition", row.condition)
    .log("List", row.group)
    .log("TrialID", row.trial_id)
    .log("CharacterID", row.target_id)
    .log("Pronoun", row.target_pronoun)
    .log("Name", row.target_name)
    .log("Image", row.target_file)
);

//Example trials 
newTrial("instructions_example_trials",
    newHtml("instructions_example_trials", "ins_trials-example.html"),
    newButton("Start").wait()
);

Template("stim-example.csv", row =>
    newTrial("trials_example",
        //Load images
        newImage("target", row.target_file).size(200,200),
        newImage("distractor", row.distractor_file).size(200,200),
        newImage("Object", row.object_image).size(100,100),
        newImage("sib_top-left", row.top_left).size(150,150),
        newImage("sib_bottom-left", row.bottom_left).size(150,150),
        newImage("sib_top-right", row.top_right).size(150,150),
        newImage("sib_bottom-right", row.bottom_right).size(150,150)
        ,
        //Display scene for 3s
        newCanvas("screen", 1000, 500)
            .center()    
            //target on left or right
            .add(row.target_x, 150, getImage("target")) 
            //distractor on left or right
            .add(row.distractor_x, 150, getImage("distractor")) 
            //object starts on same side as target
            .add(row.object_x, 200, getImage("Object"))
            .add(0, 0, getImage("sib_top-left"))
            .add(0, 350, getImage("sib_bottom-left"))
            .add(850, 0, getImage("sib_top-right"))
            .add(850, 350, getImage("sib_bottom-right"))
            .print(),
        newTimer("timer3000", 3000).start().wait()
        ,
        //Move object image from character to sibling
        getCanvas("screen")             //put in second location for 500ms
            .add(row.object_x, row.object_y2, getImage("Object"))
            .refresh(),  
        newTimer("timer500", 500).start().wait(),
        getCanvas("screen")            //put in third location for 500ms
            .add(row.object_x, row.object_y3, getImage("Object"))
            .refresh(),
        getTimer("timer500").start().wait(),
        getCanvas("screen")           //put in fourth location 
            .add(row.object_x, row.object_y4, getImage("Object"))
            .refresh(),
        getTimer("timer3000").start().wait(), //wait for 3s
        //Display correct answer for at least 3s
        newText("answer", row.correct_description)
            .center()
            .css("font-size", "2em")
            .css("margin-top", "25px"),
        getTimer("timer3000").start().wait(),
        newButton("Next").wait(),
        clear()
    )
    //Log trial variables
    .log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"))
    .log("Condition", row.condition)
    .log("List", row.group)
    .log("TrialID", row.trial_id)
    .log("T_ID", row.target_id)
    .log("T_Pronoun", row.target_pronoun)
    .log("T_Name", row.target_name)
    .log("T_Image", row.target_file)
    .log("D_ID", row.distractor_id)
    .log("D_Pronoun", row.distractor_pronoun)
    .log("D_Name", row.distractor_name)
    .log("D_Image", row.distractor_file)
    .log("Correct_Description", row.correct_description)
);

//Practice trials 
newTrial("instructions_practice",
    newHtml("instructions_practice", "ins_trials-practice.html"),
    newButton("Start").wait()
);

Template("stim-practice.csv", row =>
    newTrial("trials_practice",
        //Load images
        newImage("target", row.target_file).size(200,200),
        newImage("distractor", row.distractor_file).size(200,200),
        newImage("Object", row.object_image).size(100,100),
        newImage("sib_top-left", row.top_left).size(150,150),
        newImage("sib_bottom-left", row.bottom_left).size(150,150),
        newImage("sib_top-right", row.top_right).size(150,150),
        newImage("sib_bottom-right", row.bottom_right).size(150,150)
        ,
        //Display scene for 3s
        newCanvas("screen", 1000, 500)
            .center()    
            //target on left or right
            .add(row.target_x, 150, getImage("target")) 
            //distractor on left or right
            .add(row.distractor_x, 150, getImage("distractor")) 
            //object starts on same side as target
            .add(row.object_x, 200, getImage("Object"))
            .add(0, 0, getImage("sib_top-left"))
            .add(0, 350, getImage("sib_bottom-left"))
            .add(850, 0, getImage("sib_top-right"))
            .add(850, 350, getImage("sib_bottom-right"))
            .print(),
        newTimer("timer3000", 3000).start().wait()
        ,
        //Move object image from character to sibling
        getCanvas("screen")             //put in second location for 500ms
            .add(row.object_x, row.object_y2, getImage("Object"))
            .refresh(),  
        newTimer("timer500", 500).start().wait(),
        getCanvas("screen")            //put in third location for 500ms
            .add(row.object_x, row.object_y3, getImage("Object"))
            .refresh(),
        getTimer("timer500").start().wait(),
        getCanvas("screen")           //put in fourth location 
            .add(row.object_x, row.object_y4, getImage("Object"))
            .refresh()
        ,    
        //Record audio for 8 seconds
        newMediaRecorder(GetURLParameter("PROLIFIC_ID") + "_" + row.trial_id + "_" + row.target_pronoun, "audio")
            .log()
            .record()
        ,
        newTimer("timer8000", 8000).start().wait(),
        getMediaRecorder(GetURLParameter("PROLIFIC_ID") + "_" + row.trial_id + "_" + row.target_pronoun)
            .stop()
        ,
        //Display correct answer for at least 3s
        newText("answer1", "Did you say something like this?")
            .center()
            .css("font-size", "2em")
            .css("margin-top", "25px"),
        newText("answer2", row.correct_description)
            .center()
            .css("font-size", "2em")
            .css("margin-top", "25px"),
        getTimer("timer3000").start().wait(),
        newButton("Next").wait(),
        clear()
    )
   //Log trial variables
    .log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"))
    .log("Condition", row.condition)
    .log("List", row.group)
    .log("TrialID", row.trial_id)
    .log("T_ID", row.target_id)
    .log("T_Pronoun", row.target_pronoun)
    .log("T_Name", row.target_name)
    .log("T_Image", row.target_file)
    .log("D_ID", row.distractor_id)
    .log("D_Pronoun", row.distractor_pronoun)
    .log("D_Name", row.distractor_name)
    .log("D_Image", row.distractor_file)
    .log("Correct_Description", row.correct_description)
);

//Critical trials [randomized order in Sequence()]
Template("stim-test.csv", row =>
    newTrial("trials_test",
		//Load images
        newImage("target", row.target_file).size(200,200),
        newImage("distractor", row.distractor_file).size(200,200),
        newImage("Object", row.object_image).size(100,100),
        newImage("sib_top-left", row.top_left).size(150,150),
        newImage("sib_bottom-left", row.bottom_left).size(150,150),
        newImage("sib_top-right", row.top_right).size(150,150),
        newImage("sib_bottom-right", row.bottom_right).size(150,150)
        ,
       //Display scene for 3s
        newCanvas("screen", 1000, 500)
            .center()    
            //target on left or right
            .add(row.target_x, 150, getImage("target")) 
            //distractor on left or right
            .add(row.distractor_x, 150, getImage("distractor")) 
            //object starts on same side as target
            .add(row.object_x, 200, getImage("Object"))
            .add(0, 0, getImage("sib_top-left"))
            .add(0, 350, getImage("sib_bottom-left"))
            .add(850, 0, getImage("sib_top-right"))
            .add(850, 350, getImage("sib_bottom-right"))
            .print(),
        newTimer("timer3000", 3000).start().wait()
        ,
        //Move object image from character to sibling
        getCanvas("screen")             //put in second location for 500ms
            .add(row.object_x, row.object_y2, getImage("Object"))
            .refresh(),  
        newTimer("timer500", 500).start().wait(),
        getCanvas("screen")            //put in third location for 500ms
            .add(row.object_x, row.object_y3, getImage("Object"))
            .refresh(),
        getTimer("timer500").start().wait(),
        getCanvas("screen")           //put in fourth location 
            .add(row.object_x, row.object_y4, getImage("Object"))
            .refresh()
        ,    
        //Record audio for 8 seconds
        newMediaRecorder(GetURLParameter("PROLIFIC_ID") + "_" + row.trial_id + "_" + row.target_pronoun, "audio")
            .log()
            .record(),
        newTimer("timer8000", 8000).start().wait(),
        getMediaRecorder(GetURLParameter("PROLIFIC_ID") + "_" + row.trial_id + "_" + row.target_pronoun)
            .stop(),
        newTimer("timer3s", 3000).start().wait()
        ,
        //Move on to next trial
        newButton("Next").wait(),
        clear()
    )
    //Log trial variables
    .log("PROLIFIC_ID", GetURLParameter("PROLIFIC_ID"))
    .log("Condition", row.condition)
    .log("List", row.group)
    .log("TrialID", row.trial_id)
    .log("T_ID", row.target_id)
    .log("T_Pronoun", row.target_pronoun)
    .log("T_Name", row.target_name)
    .log("T_Image", row.target_file)
    .log("D_ID", row.distractor_id)
    .log("D_Pronoun", row.distractor_pronoun)
    .log("D_Name", row.distractor_name)
    .log("D_Image", row.distractor_file)
    .log("Correct_Description", row.correct_description)
);