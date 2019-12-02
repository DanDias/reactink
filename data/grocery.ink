== GroceryStore ==
We entered the store. My {childTitle} held onto the cart. It was sometimes hard to believe how big {childPronoun1} was getting.
    * We started with the produce[...] aisle. -> Produce_Aisle
    * We started with the meat[...] aisle. -> Meat_Aisle
    * We started in the freezer section[...]. -> Freezer_section
= AllDone
We moved onto the other aisles and picked up the rest of the essentials. We had gotten everything on the list and a bit more. It was time to head to the checkout line.
{ meetCtd(): -> Connection_To_Doe -> }
+ [Continue...]
-> Loop

= Produce_Aisle
    * The fruits looked good.[] Shiny red apples, oranges, were great for snack. My {childTitle} liked them if I sliced the apples exactly to {childPronoun3} specifications.
    * Veggies are essential[...], though we are in a constant battle at dinner time. I usually get {childPronoun2} to eat at least 1 piece every night. I consider this a victory.
- -> GroceryStore.AllDone

= Meat_Aisle
My mouth watered looking at the steaks. I mentally did the math and... <> 
    * it was no problem.[]
    * we might be able to afford one.[]
    * bolagna would be our "steak".[]
- -> GroceryStore.AllDone

= Freezer_section
Frozen foods were always easier to prepare. Not only that but {childPronoun1} was so picky. Today, it would be frozen chicken nuggets; tomorrow, who knows.
        "Can we get these?" {childPronoun1} pulled on my sleeve and pointed at Jell-O Pudding Pops.
            ** "Sure[,]" it wasn't the most nutritous snack, but if {childPronoun1} would eat them, great.
            ** "That doesn't look like healthy food."[] We had talked about what was healthy and what was not.
            -- I picked up a few Lean Cuisines for myself.
-> GroceryStore.AllDone

// Notes:
Jell-O Pudding Pops
Kraft Macaroni and Cheese
Otter Pops
Trading Cards with Bubble Gum
Flintstone's Push pops
Handy Snacks
Cheeze Whiz
Teddy Grahams
Fun Dip