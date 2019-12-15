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
VAR childBond = 7
VAR day = 0

// Variable names because I'm indecisive and lazy
CONST ctdName = "Fred"
CONST ctdWifeName = "Mary"
CONST groceryStoreName = "Lucky"

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
- day == 5:
    August 2nd, {getYear()}
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
} blah blah blah

== Almost_Caught ==
I noticed the van almost immediately upon walking out of the door. I was just going out to pick up the paper. It was a black, non-descript van with tinted windows and no license plate. There was no way this was just a coincidence.
I calmly walked inside and locked the door. How did they find us? I wondered if it was {ctdName}. No, surely not. Maybe my interactions with {parentY} tipped someone off. They couldn't be sure of anything otherwise they would have raided the house during the night. We were being surveilled. It will only be a matter of time.
I walked to the gas station down the street. I contacted {ctdName} with the card he gave me. He told me about a man. This man contained the whole of human knowledge. If a human knew about it, he could know about it too. He helped people with abilities hide out and stay off the radars of whoever was hunting us.
-> DONE

== MainFlow ==
-> Intro -> Loop

== Loop ==
~ day += 1
{getJournalDate()}
{shouldEnd(): ->Almost_Caught}
{ day == 1:
    -> School
- else:
    * We needed food[...] so we drove over to {groceryStoreName}.
    -> GroceryStore
    * It was about time we relaxed a bit[...] so we went to see a movie.
    -> Movies
    * We stayed inside[...] for the day.
    -> Inside
}