INCLUDE intro.ink
INCLUDE school.ink
INCLUDE grocery.ink
INCLUDE movie.ink
INCLUDE inside.ink
INCLUDE park.ink
INCLUDE truthteller.ink

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

// Variable names because I'm indecisive and lazy
CONST ctdName = "Fred"
CONST ctdWifeName = "Mary"
CONST groceryStoreName = "Walmart"

LIST ALL_FACTS = Is_Busted, Reluctant_To_Give_Name, Blames_Child, Remote_Heal, Desparate, School_Late, School_Early, Named_ParentY, Lied_About_Weekend, Too_Honest_About_Weekend, Is_Silly, Smartass_To_Kid, Met_CTD

-> MainFlow

== function getYear ==
 ~ return 1984

== function getJournalDate ==
{
- day == 1: 
    July 11th, {getYear()}
- day == 2: 
    July 14th, {getYear()}
- day == 3: 
    July 21st, {getYear()}
- day == 4:
    July 25th, {getYear()}
}

== function shouldEnd ==
{
    - day > 4:
        ~ return true
    - else:
        ~ return ALL_FACTS ? Is_Busted
}

== function meetCtd ==
{
    - ALL_FACTS !? Met_CTD:
        ~ return true
    - else:
        ~ return false
}

== Almost_Caught ==
-> DONE

== MainFlow ==
-> Intro -> Loop

== Loop ==
~ day += 1
{shouldEnd(): ->Almost_Caught}
{getJournalDate()}
{ day == 1:
    -> School -> Loop
- else:
    * We needed food[...] so we drove over to {groceryStoreName}.
    -> GroceryStore
    * It was about time we relaxed a bit[...] so we went to see a movie.
    -> Movies
    * We stayed inside[...].
    -> Inside
}