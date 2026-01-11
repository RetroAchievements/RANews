---
issue: 2025-12
order: 202512-33
layout: article
title: RAdvantage
author: RANews
toc: false
---

![](../../img/radvantage.png)

RAdvantage is bringing you tips for some of the hardest achievements on the site. As always, our DMs remain open at {% rauser RANews %}, if you have tips for any 100 point or other very difficult achievements you have earned please let us and the rest of the community know.

# Tip Provided By:

<div class="bingo-winner">
  {% rauserpic NEOMAR %}
</div><br>

| Game                                         | Console  | Genre          |
| -------------------------------------------- | -------- | -------------- |
| {% ragamepic 7598, 093775, Bonk's Revenge %} | Game Boy | 2D Platforming |

<br>

| Achievement                               | Description                             | Points |
| ----------------------------------------- | --------------------------------------- | ------ |
| {% raachpic 416954, 471276, In a Jiffy %} | Defeat Clinger in less than 30 seconds. | 10     |


Judging by the unlock numbers, this seems to be the hardest challenge of the set. To even reach the boss, you have to trudge through 3 quick stages for every boss retry.

If you're not on your non-password clear, you can gameover on purpose to obtain the stage 5 password. This will let you retry the challenge across game sessions or soft emulator resets.

First, let's talk about the boss patterns. Clinger will always move the same way and there's no rng to its patterns. Clinger will spawn at the top (1), then move to the left wall (2), then to the bottom middle (3). This part is important, since he will first go to the left side after going to the bottom (3 to 2).


```
-----------
|....1....|
|2.......4|
|....3....|
-----------
```


After he goes to 2, he will go to the top (1), then to the right wall (4), then the bottom again (3). Remember this pattern, as it will go to the right side wall this time after being on the bottom middle (4). Its patterns will loop the same from now on. A full movement of its patterns will look like this:  

`1 -> 2 -> 3 -> 2 -> 1 -> 4 -> 3 -> 4 -> 1` [loops on-wards]

Now that we got its patterns, let's talk about clinger's hitbox. You can hurt clinger in every one of its 4 positions. For '1', simply jump and hit it with your head. '2' and '4' can be a little more tricky, as you'll hurt yourself if you try to jump while hugging the wall. Distance yourself a bit from each wall and you'll be able to hurt clinger by jumping up without damaging yourself.

For position #3, this will require a bit more effort. You'll have to preemptively jump and bonk dive into clinger's head, then quickly fall towards your next position to prepare an attack from one of the corners. For example, if clinger's going from '2' to '3', you'll want to prepare a jump before clinger goes to '3', bonk clinger's head when it goes to the bottom, then quickly fall to the left corner. This is so you can prepare a jump for position #2.

Doing it this way, you do not need to go through the pain of bringing any of bonk's transformations to the boss arena, as the damage will be the same as the base bonk anyway. Doing this right, this strategy can account for at least a couple mistakes and still make the 30 second timer that the achievement challenge requires. You need about 19 hits before clinger goes down.

If you want to see a video showcasing how i did it, i posted one in the achievement comments.