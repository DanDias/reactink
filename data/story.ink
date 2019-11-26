INCLUDE intro.ink
INCLUDE school.ink

VAR childGender = "F"
VAR childTitle = "daughter"
VAR childPronoun1 = "she"
VAR childPronoun2 = "her"
VAR childPronoun3 = "her"

VAR mainCharName = "Dan"
VAR mainCharGender = "M"
VAR mainCharTitleAffectionate = "Daddy"

VAR parentY = "Parent\"y\""
VAR suspicion = 0
VAR day = 0

LIST ALL_FACTS = Is_Busted, Reluctant_To_Give_Name, Blames_Child, Remote_Heal, Desparate, School_Late, School_Early, Named_ParentY, Lied_About_Weekend, Too_Honest_About_Weekend, Is_Silly, Smartass_To_Kid

-> MainFlow

== function getJournalDate ==
{
- day == 1: 
    May 21st, 2019
- day == 2: 
    May 23rd, 2019
- else: 
    June 2nd, 2019
}

== function shouldEnd ==
{
    - day >= 4:
        ~ return true
    - else
        ~ return ALL_FACTS ? Is_Busted
}

== Almost_Caught ==
-> DONE

== MainFlow ==
-> Intro -> Loop

== Loop ==
~ day += 1
{getJournalDate()}
{shouldEnd(): ->Almost_Caught}
{ day == 1:
    -> School ->
- else:
    * We needed food -> GroceryStore 
    * It was about time we relaxed a bit -> Movies
    * I needed my morning fix of coffee -> Coffee_Shop
    * We stayed inside -> Inside
}
->Loop

== GroceryStore ==
A story about the GroceryStore goes here.
+ Go on...
->->
== Movies ==
A story about the Movies goes here.
+ Go on...
->->
== Coffee_Shop ==
A story about the coffee shop goes here.
+ Go on...
->->
== Inside ==
A story about staying indoors goes here.
+ Go on...
->->
== Park ==
A story about going to the park goes here.
+ Go on..
->->