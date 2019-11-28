== School ==
#background: school_front
We arrived at my {childTitle}'s school.
* The bell would ring in twenty minutes.
    Traffic hadn't been as terrible as I had anticipated. Usually there's a long line of cars waiting to drop off their children, but that line hadn't yet started. -> SchoolParentEncounter
* The bell would ring in five minutes.
    Traffic was about normal today. There was a long line of cars waiting to drop off their children. -> SchoolParentEncounter
* We were late.
    Traffic was bad and I had waited until the last possible minute to leave. I had to take {childPronoun2} to the office to check in. -> SchoolOfficeEncounter
    
== SchoolOfficeEncounter ==
~ ALL_FACTS += (School_Late)
#background: school_office
No matter how old you are, school offices feel like you are in trouble. I'm not sure if it's a purposeful design or just a feeling evoked from learned behavior.
"Have a seat, please." The office person behind the desk said as we walked in. She was with another parent filling out a form. We sat in the first set of chairs we saw.
"{mainCharTitleAffectionate}, can I go to my classroom now?" My {childTitle} whined.
* "We need to wait[...] for the people in front of us." I told {childPronoun2}. ->waiting
* "Sure! Let's go![...]" I exclaimed loudly. Hoping it would speed up the process. We stood up.
    "Excuse me, you have to have a note for when {childPronoun1} gets to class."->give_note
= waiting
The next couple minutes seemed like hours.
->give_note
= give_note
"Here's the note saying that you were late. Have a good day."
Awfully judgey. I grabbed the note and walked to my {childTitle}'s classroom.

-> Loop

== SchoolParentEncounter ==
#background: playground
~ ALL_FACTS += (School_Early)
I let {childPronoun2} go play with the other children and I sat on a bench as far away from other parents as possible. I brought a book with me and pretended to read it while I kept tabs on my {childTitle}.
* Parents on the playground[...] was still a weird thing to me. When I was younger, kids of all ages were just dropped off and parents went to work. These parents are different. They stick around. That works for me since I need to make sure nothing goes wrong. I kept to myself so I barely knew any of their names.
* The playground[...] was an odd bright blue structure with rounded edges on everything and the ground was filled with recycled rubber tire pieces, sanded smooth. I chuckled to myself as I remembered the wooden and steel monstrosities of my chlidhood and the ground filled with gravel.
* The book I was pretending to read[...] was a cheap paperback I found in a closet when we moved in. The edges of the book were worn as if it had been read many times. The story itself was a swords and scorcery fantasy book. I didn't much care for the genre, but they were generally thick and made it plausible I was reading the same thing every day. I turned about ten pages a day; eleven on a good day.
- "Hey!" A woman with short brown hair approached. I'm so bad with names. What was her name... <>
* [Whitney?] -> whitney
* [Stacy?] -> stacy
* [Definitely a name ending in "y"...] -> safe_response
= whitney
~parentY = "Whitney"
-> named_parent
= stacy
~parentY = "Stacy"
-> named_parent
= named_parent
~ ALL_FACTS += (Named_ParentY)
"Hey {parentY}!" I went for it. I was pretty sure that was her name.
-> long_weekend
= safe_response
I had no clue. I decided to play it safe. 
I pretended to look up from my book, "Hi there."
-> long_weekend
= long_weekend
"How was the long weekend?" she asked.
* "Good. We went on a quick trip to my parent's house in Tahoe." -> weekend_detailed
* "Fire, brimstone, covering up a murder; you know, the usual." -> weekend_honest
* "Somehow still too short!" -> weekend_vague
= weekend_honest
~ ALL_FACTS += (Too_Honest_About_Weekend)
{parentY} got a real confused look on her face and stayed quiet.
    * I laughed.[] I saw some kind of relief wash over her face. 
        ~ suspicion += 3
        -> bridge_to_incident
    * "You know. So much to do, so little time, right?" 
        ~ suspicion += 1
        -> conversation_bridge
= weekend_vague
I put on the mask of vagueness. A calculated friendliness that said nothing and didn't invite too many questions. Pleasantries were great for saying nothing. -> conversation_bridge
= weekend_detailed
~ ALL_FACTS += (Lied_About_Weekend)
I lied my face off.
"I don't believe it!" she responded. <>
    * I gulped.
    * I readied myself.
    * I looked for the nearest exit.
- "We were in Tahoe too!" she continued. -> bridge_to_incident
= conversation_bridge
"I hear that!" She smiled. -> bridge_to_incident
= bridge_to_incident
She started telling me about their weekend. I shut off my brain and let it just absorb the conversational hooks. "... Tahoe ... snow ... kids had fun..." my attention darted toward my {childTitle} to see what {childPronoun1} was doing. The kids were playing tag around a tree.
"Sounds like you guys had a great time." I said idly. The kids suddenly gathered around and were standing in a circle, looking at the ground. "Will you excuse me? I want to go check on the kids."
"Oh, you're such a helicopter parent. They're fine."
* I shot her a sheepish smile[] and turned back to face the kids.
* I ignored her completely[] and walked toward the group of children.
    ~ suspicion += 1
* I spun around in circle arms outstretched[] as I walked toward the kids. {parentY} chuckled.
    ~ ALL_FACTS += (Is_Silly)
- What were they gathered around?
I walked up behind the children and looked over them. A bird flew out from the circle and into the tree. My stomach dropped. I knew what happened.
"That bird was dead!" A kid in a red jacket blurted out in amazement. Most parents were in conversation but a few, including {parentY}, were interested in the commotion.
"Don't be stupid, it flew away it couldn't have been dead!" Another child exclaimed.
"It's guts were hanging out! Then {childPronoun1} { ALL_FACTS == (Remote_Heal): got here | touched it } and it got up and flew away!" He pointed at my {childTitle} who was now looking at me. { ALL_FACTS == (Remote_Heal): A tear rolled down {childPronoun3} face.}
{parentY} walked up on the group and stood beside me. She had clearly heard the claim and it was her son making it.
* "Kids have quite the imagination."[] I said to {parentY}.
    "I wasn't imaginging it, mister!" The kid in the red jacket interjected.
    "Dakota! That's very rude." {parentY} said back to her son.
* "Guts hanging out and it flew?!"[] I exclaimed to the group of kids.
    "If that were true you'd have blood all over you. Wouldn't you?" I stared at the red jacketed kid.
    "Dakota, will you quit exaggerating. I'm sure it was just stunned. Come on, the bell is about to ring." {parentY} shot me a look that wasn't exactly friendly.
    ~ ALL_FACTS += (Smartass_To_Kid)
- The bell rang. The stampede commenced as children darted to their designated areas to line up. My {childTitle} and I were left alone.

"You know you can't do that here." I said to {childPronoun2}.
"I know. It was so small and hurt. I just wanted to make it better and then it happened." {childPronoun1} looked up at me with a smile. I couldn't help but return it. I crouched down to {childPronoun3} level. "{mainCharTitleAffectionate}, are we going to have to leave again?"
* "Definitely not[...] it was a small slip up { ALL_FACTS ? Smartass_To_Kid: Dakota's mom might believe him but that's it. | no one seemed to believe Dakota. } I think we're in the clear."<>
* "Maybe[...] we'll have to see."
* "Probably[...], we should pack just in case."
I idly straightened {childPronoun3} coat back onto {childPronoun3} shoulders.
- "You have such an amazing gift. But you know, if someone found out they would take you away from me. So we have to keep it a secret for now." I motioned from {childPronoun3} heart to mine. "Between us."
"Okay" {childPronoun1} looked at the ground and kicked aside a twig.
"Okay. Now let's get you to class before you're late!" We ran as fast as a five year old's legs can carry them.
->->