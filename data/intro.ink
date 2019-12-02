== function setupChild(choice) ==
    { 
    - choice == 1:
        ~ childGender = "F"
        ~ childTitle = "daughter"
        ~ childPronoun1 = "she"
        ~ childPronoun2 = "her"
        ~ childPronoun3 = "her"
    - choice == 2:
        ~ childGender = "M"
        ~ childTitle = "son"
        ~ childPronoun1 = "he"
        ~ childPronoun2 = "him"
        ~ childPronoun3 = "his"
    - choice == 3:
        ~ childGender = "NB"
        ~ childTitle = "child"
        ~ childPronoun1 = "they"
        ~ childPronoun2 = "them"
        ~ childPronoun3 = "their"
    }

== Intro ==
#background: paper
Dear Mr. Doe,

I hope this letter finds you well. 
* My name is {mainCharName}[] and <>
* You don't know me[] but <> 
    ~ ALL_FACTS += Reluctant_To_Give_Name
- I'm in great need of your help. I have heard about you from a trusted friend who thinks you are the only one who can help us.
* I have a daughter[] { setupChild(1) } <> 
* I have a son[] { setupChild(2) } <> 
- who is very special. Not in the way that every parent thinks their child is special, but in a way that some people might want to dissect {childPronoun2} if they were to find out.
You see, {childPronoun1} is a healer. At will, {childPronoun1} is able to mend any wound, cure any disease, even pull a life from the brink of death if it's soon enough.
It's been just {childPronoun2} and me on the road, moving from town to town after each incident.
* I still blame {childPronoun2}[] for not being able to save {childPronoun3} mother. I know it's wrong of me but it's there in the back of my head. <>
    ~ ALL_FACTS += Blames_Child
* I can't blame {childPronoun2}[] for not being able to save {childPronoun3} mother. <>
- Poor thing was only a year old and had not yet used {childPronoun3} powers. One year and a day later was the first time. I cut myself shaving and {childPronoun1} reached up and cried out for me to hold {childPronoun2}. 
* So I picked {childPronoun2} up[]. <>
* Before I could do anything[], {childPronoun1} grabbed onto my leg. <>
* When I didn't pick {childPronoun2} up[], {childPronoun1} just stared at me blankly. <>
    ~ ALL_FACTS += Remote_Heal
- I felt a warmth spread across my face. Suddenly the slight sting was gone. I wiped away the blood and no more poured out. That moment was the worst moment of my life.
We've been looking over our shoulders ever since. So, Mr. Doe, I write this letter because we need the services of someone like you; now more than ever. We need someone to help us and warn us before anything can happen.
I'm not sure what I can provide in the form of payment that you would value, but please, name your price. I'll do anything to keep them at bay. I won't let them take my {childTitle}.
Please see the enclosed copy of my journal entries from these past few weeks for any details that may be relevant.

* Sincerely,
* Cordially yours,
* With great desparation,
    ~ ALL_FACTS += Desparate

- { ALL_FACTS ? Reluctant_To_Give_Name: "Mr. X" | {mainCharName}}
->->