VAR childGender = "F"
VAR childName = "Talia"
VAR childTitle = "daughter"
VAR childPronoun1 = "she"
VAR childPronoun2 = "her"
VAR parentY = "Parent\"y\""
VAR suspicion = 0


-> MainFlow

== MainFlow ==
-> School ->
* End
-> DONE

== School ==
We arrived at {childName}'s school.
* The bell would ring in twenty minutes.
    Traffic hadn't been as terrible as I had anticipated. Usually there's a long line of cars waiting to drop off their children, but that line hadn't yet started. -> SchoolParentEncounter
* The bell would ring in five minutes.
    Traffic was about normal today. There was a long line of cars waiting to drop off their children. -> SchoolParentEncounter
* We were late.
    Traffic was bad and I had waited until the last possible minute to leave. I had to take {childName} to the office to check in. -> SchoolOfficeEncounter
    
== SchoolOfficeEncounter ==
->->

== SchoolParentEncounter ==
I let {childName} go play with the other children and I sat on a bench as far away from other parents as possible. I brought a book with me and pretended to read it while I kept tabs on my {childTitle}.
"Hey!" A woman with short brown hair approached. I'm so bad with names. What was her name... <>
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
"Hey {parentY}!" I went for it. I was pretty sure that was her name.
-> long_weekend
= safe_response
I had no clue. I decided to play it safe. 
I pretended to look up from my book, "Hi there."
-> long_weekend
= long_weekend
"How was the long weekend?" she asked.
* "Good. We went on a quick trip to {childName}'s grandparent's house in Tahoe." -> weekend_detailed
* "Fire, brimstone, covering up a murder; you know, the usual." -> weekend_honest
* "Somehow still too short!" -> weekend_vague
= weekend_honest
{parentY} got a real confused look on her face and stayed quiet.
    * I laughed.[] I saw some kind of relief wash over her face. -> bridge_to_incident
    * "You know. So much to do, so little time, right?" -> conversation_bridge
= weekend_vague
I put on the mask of vagueness. A calculated friendliness that said nothing and didn't invite too many questions. Pleasantries were great for saying nothing. -> conversation_bridge
= weekend_detailed
I lied my face off.
"I don't believe it!" she responded. <>
    * I gulped. -> tahoe_too
    * I readied myself. -> tahoe_too
    * I looked for the nearest exit. -> tahoe_too
    = tahoe_too
    "We were in Tahoe too!" she continued. -> bridge_to_incident
= conversation_bridge
"I hear that!" She smiled. -> bridge_to_incident
= bridge_to_incident
She started telling me about their weekend. I shut off my brain and let it just absorb the conversational hooks. "... Tahoe ... snow ... kids had fun..." my attention darted toward my {childTitle} to see what {childPronoun1} was doing. The kids were playing tag around a tree.
"Sounds like you guys had a great time." I said idly. The kids suddenly gathered around and were standing in a circle, looking at the ground. "Will you excuse me? I want to go check on the kids."
"Oh, you're such a helicopter parent. They're fine."
* I shot her a sheepish smile[] and turned back to face the kids. -> school_indicident
* I ignored her completely[] and walked toward the group of children. -> school_indicident
* I spun around in circle arms outstretched[] as I walked toward the kids. {parentY} chuckled. -> school_indicident
= school_indicident
What were they gathered around?
I walked up behind the children and looked over them. A bird flew out from the circle and into the tree. My stomach dropped. I knew what happened.
"That bird was dead!" A kid in a red jacket blurted out in amazement. Most parents were in conversation but a few, including {parentY}, were interested in the commotion.
"Don't be stupid, it flew away it couldn't have been dead!" Another child exclaimed.
"It's guts were hanging out! Then {childName} touched it and it got up and flew away!"
{parentY} walked up on the group and stood beside me. She had clearly heard the claim and it was her son making it.
* "Kids have quite the imagination."[] I said to {parentY}.
    "I wasn't imaginging it, mister!" The kid in the red jacket interjected.
    "Dakota! That's very rude." {parentY} said back to her son.
    -> bell_rang
* "Guts hanging out and it flew?!"[] I exclaimed to the group of kids.
    "If that were true you'd have blood all over you. Wouldn't you?" I stared at the red jacketed kid.
    "Dakota, will you quit exaggerating. I'm sure it was just stunned. Come on, the bell is about to ring." {parentY} shot me a look that wasn't exactly friendly.
    -> bell_rang
= bell_rang
The bell rang. The stampede commenced as children darted to their designated areas to line up. Made it through another school morning.
->->