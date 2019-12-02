== Movies ==
# background: movies
We walked up to the theater. I looked at the marquee.->choose_movie
= choose_movie
* Ghostbusters -> on_the_edge ->
* {day > 1} The Muppets Take Manhattan -> kid_friendly ->
* {day > 1} The Last Starfighter -> on_the_edge ->
* {day == 2} Gremlins[] Although there was a fuzzy creature on the poster, I had heard about families walking out of this one. -> inappropriate ->
* {day == 2} The Karate Kid -> kid_friendly ->
* {day == 2} Conan the Destroyer -> inappropriate ->
* {day > 2} The Neverending Story -> kid_friendly ->
* {day > 2} Revenge of the Nerds -> inappropriate ->
* "What do you want to see?"[] Only seemed right to let the kid pick. -> let_kid_choose ->

- It was nice getting out for a change. We exited the movie and went out into the lobby. My {childTitle} asked for a quater to play one of the arcade games. I gave it to {childPronoun2} and {childPronoun1} ran off giggling.
{ meetCtd(): -> Connection_To_Doe -> }
+ [Continue...]
-> Loop

== inappropriate ==
I longed to see a more mature movie. But I couldn't take a five year old to that.
-> Movies.choose_movie
== on_the_edge ==
We purchased the tickets. It wasn't long before I was having second thoughts about taking a five year old to this movie.
->->
== kid_friendly ==
We got tickets and entered the theater. The movie was a bit dull for me but it had some good moments and {childPronoun1} seemed to enjoy it.
->->
== let_kid_choose ==
~ childBond += 1
"I want to see <>
{
    - RANDOM(1,3) == 3:
        Ghostbusters!" {childPronoun1} said exicitedly
        -> on_the_edge ->
    - else: {
        - day == 2:
            {~The Muppets!|Karate Kid!}"  {childPronoun1} said exicitedly
            -> kid_friendly ->
        - day > 2:
            {~Neverending Story!|The Muppets!}"  {childPronoun1} said exicitedly
            -> kid_friendly ->
        }
}

->->
// https://en.wikipedia.org/wiki/1984_in_film
