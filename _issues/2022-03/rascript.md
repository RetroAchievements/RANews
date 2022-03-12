---
issue: 2022-03
order: 202203-15
layout: article
title: RAScript Tutorials
author: Etron
toc: true
---

# Tutorial #2 - Add Hits

## Overview

This tutorial will show a few examples of how to use AddHits to create some achievements in RAScript.  [Streets of Rage 2](https://retroachievements.org/game/3) was chosen as the tutorial example to show how adding hits can be used to improve counting the number of enemies the player has knocked out.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/02_Add_Hits/Streets_of_Rage_Title.png" />
</p>
 
## AddHits

Each comparison in an achievement's logic is evaluated every frame. By default each comparison is set to zero *hits* which means that the comparison will not remember its previous evaluations. For the achievement to be triggered a comparison with zero *hits* must evaluate true in the same frame as the rest of the comparisons in the achievement’s logic. If the comparison is set to one or more *hits*, then the comparison will keep track of how many frames that the comparison evaluated to true. Once number of *hits* equals the initial *hits* setting the comparison will remain true until either the achievement is triggered or reset.

In some cases you’ll want to combine *hits* together from multiple comparisons.  The following examples will show how to add *hits* together for tracking which characters the player has used and to count how many enemies the player has knocked out. This tutorial will use a few different types of RAScript *hits* related commands which can be found on the RATools wiki in the [Trigger-Functions](https://github.com/Jamiras/RATools/wiki/Trigger-Functions) section.
 
## Example #2A - Team Game
Streets of Rage 2 has four playable characters: Max, Axel, Blaze, and Skate. Each character has their own statistics and abilities that are significantly different enough to require a different strategy for each character.  You are given the chance to select a character once at the beginning of the game and you may change your selection after continuing.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/02_Add_Hits/Skate_Select.png" />
</p>

 The following code will track if the player has used each character at least once.  The achievement will pause with the *unless* command whenever the screen mode is not in game.  That way we don’t trigger *hits* during the character selection screen. Using the *once* command the character selected comparison will latch on when said character is selected and it will stay on indefinitely. When using *hits* you would usually want include a *never* statement to reset the logic however, in this case we don’t need to reset the logic since the scope of the achievement is for the entire play session.  Note that the *hits* would all be reset in a new session.
```
// Streets of Rage 2
// #ID = 3

// $FC02: Screen Mode- 0=segalogo, 4=pressstart, 8=demo, c=mainmenu, 10=options, 14=ingame, 
//        18=charselect, 1c=ending, 24=introcards, 28=credits
function ScreenMode() => byte(0x00FC02)

// $FC50: Axel selected = 0xff
function AxelSelected() => word(0x00FC50) == 0xff

// $FC51: Max selected = 0xff
function MaxSelected() => word(0x00FC51) == 0xff

// $FC52: Skate selected = 0xff
function SkateSelected() => word(0x00FC52) == 0xff

// $FC53: Blaze selected = 0xff
function BlazeSelected() => word(0x00FC53) == 0xff

// Record a hit for each character active during gameplay
// This variation is the current core achievement
achievement(
    title = "Team Game", 
    description = "Play once as every character",
    points = 4,
    trigger = unless(ScreenMode() != 20) &&
        once(AxelSelected()) && 
        once(BlazeSelected()) &&
        once(MaxSelected()) && 
        once(SkateSelected())
)
```
The above works perfectly fine for tracking which character is used.  A measure could be added to this function to give the player some feedback of how many characters they have used. To add the measure we will need to combine the *hits* using the *tally* function.  Since the pause would disable the achievement while not in-game another modification was made to check the game mode with the selected character at the same time.  When two or more comparisons are combined together like this in an *once* command they are grouped together with *AndNext* flags.  So the result of this following code is a *AddHits* and *AndNext* chain that will sum up to four when every character has been selected.
```
// Record a hit for each character active during gameplay
// This variation of the using add hits to support using measure
achievement(
    title = "Example 2A: Team Game", 
    description = "Play once as every character", 
    points = 0,
    trigger = measured(
                  tally(4,
                      once(ScreenMode() == 20 && AxelSelected()),
                      once(ScreenMode() == 20 && MaxSelected()),
                      once(ScreenMode() == 20 && SkateSelected()),
                      once(ScreenMode() == 20 && BlazeSelected())
                  )
              )
)
```
This is a simple example of combining hits for multiple events. Next we will look at using hits to count enemy knockouts.

Scripts: [Example #2A script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/02_Add_Hits/Example_02A_Streets_of_Rage_2.rascript)

## Example #2B – Untouchable
The main goal of Streets of Rage 2 is to fight your way through eight different stages full of enemies trying to stop you from getting to their boss, Mr X. As such, you are constantly beating up and knocking out enemies as you play through the game.  The game memory tracks how many enemies you have knocked out overall from stage one.  You can use this information to add challenges like tracking how many enemies the player has knocked out in one life.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/02_Add_Hits/Axel_Uppercut.png" />
</p>
 
Since the number of total knockouts from stage one might not be the same value as how many knockouts the player has done in one life we must track the value differently. The following code will increment one hit every time the Player1KOs() value increases.  The knockout count will reset whenever the Player1Lives() value decreases.
```
// Streets of Rage 2
// #ID = 3

// $EF4E: Player one, number KOs
function Player1KOs() => word(0x00EF4E)

// $EF82: Player one lives
function Player1Lives() => word(0x00EF82)

// $FC02: Screen Mode- 0=segalogo, 4=pressstart, 8=demo, c=mainmenu, 10=options, 14=ingame, 
//        18=charselect, 1c=ending, 24=introcards, 28=credits
function ScreenMode() => byte(0x00FC02)

// Count how many enemies where knocked out in one life
// This variation is the current core achievement
achievement(
    title = "Untouchable",
    description = "Defeat 200 enemies without dying", 
    points = 25,
    trigger = repeated(200, Player1KOs() > prev(Player1KOs())) &&
        never(Player1Lives() < prev(Player1Lives()))
)
```
Using *AddHits* to count like this has a potential issue that would throw the count off.  If the player knocks out two or more enemies at once the count would only increment by one. To remedy this you would need to add additional *hits* when the player knocks out two enemies, three enemies, four enemies, and five enemies.  Since Streets of Rage 2 has a maximum of five active enemies at once you would only need to track up to five simultaneous knock outs. The following code uses a combination of *AddHits* and *AddSource* to count how many knock outs have occurred:
``` 
// Count how many enemies where knocked out in one life
// This variation counts instance of multiple enemies getting knocked out at once.
achievement(
    title = "Example 2B: Untouchable", 
    description = "Defeat 200 enemies without dying",
    points = 0,
    trigger = measured(
                  tally(200, 
                      prev(Player1KOs()) < Player1KOs(),
                      prev(Player1KOs()) + 1 < Player1KOs(),
                      prev(Player1KOs()) + 2 < Player1KOs(),
                      prev(Player1KOs()) + 3 < Player1KOs(),
                      prev(Player1KOs()) + 4 < Player1KOs()
                  )
              ) &&
              never(ScreenMode() != 20) &&
              never(Player1Lives() < prev(Player1Lives()))
)
```
The above code might be easier to understand if we put some numbers to it. Let say that the previous number of knockouts prev(Player1KOs()) is 100 and the player just knocked out three enemies at once raising the current number knockouts Player1KOs() value to 103.  The following comparisons for that frame would evaluate to:
```
prev(Player1KOs()) < Player1KOs() ➡ 100 < 103 ➡ TRUE add hit
prev(Player1KOs()) + 1 < Player1KOs() ➡ 101 < 103 ➡ TRUE add hit
prev(Player1KOs()) + 2 < Player1KOs() ➡ 102 < 103 ➡ TRUE add hit
prev(Player1KOs()) + 3 < Player1KOs() ➡ 103 < 103 ➡ FALSE no hit
prev(Player1KOs()) + 4 < Player1KOs() ➡ 104 < 103 ➡ FALSE no hit
```
The result of the above evaluation for that frame would add three *hits* to the total. This may seem like an edge case scenario however, multiple knockouts occur often since the enemies will clump in front of the player. 
### Test Run
Using the code Example 2B you can see the hit distribution that occurred during a test run. See the screenshot below for the results:

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/02_Add_Hits/Untouchable_Hits.PNG" />
</p>

Remember that if multiple simultaneous knockouts occur one hit will be added to all of the previous comparisons.  Therefore to figure out the occurrence of each type of multi-knockout you must subtract the *hits* from the next comparison below. Out of 200 total knock outs there were:
* 0 Quintuple knock outs
* 2 Quadruple knock outs
* 6 Triple knock outs
* 24 Double knock outs
* 126 Single knock outs

### Results
If we were just using the condition ```prev(Player1KOs()) < Player1KOs()``` then **42 knock outs would have been missed!**  I wasn’t able to get a quintuple knock out during the test however, you can sleep well knowing that if a player does get five knock outs simultaneously all five will be counted.

Scripts: [Example #2B script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/02_Add_Hits/Example_02B_Streets_of_Rage_2.rascript)

## Example #2C - Steel Grip
Besides beating up enemies with your bare knuckles the player can pick up and use weapons that the enemies drop.  Weapons significantly increase your damage so once you get a weapon, it is best to hold on to it for as long as possible.  The Steel Grip achievement rewards the player for holding on to the same weapon for ten or more knockouts.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/02_Add_Hits/Blaze_Knife.png" />
</p>
 
```
// Streets of Rage 2
// #ID = 3

// $EF33: 8-bit - Holding Weapon
function HoldingWeapon() => byte(0x00EF33) == 1

// $EF37: 8-bit - Weapon Type
function WeaponType() => byte(0x00EF37)

// $EF4E: Player one, number KOs
function Player1KOs() => word(0x00EF4E)

// $FC02: Screen Mode- 0=segalogo, 4=pressstart, 8=demo, c=mainmenu, 10=options, 14=ingame, 
//        18=charselect, 1c=ending, 24=introcards, 28=credits
function ScreenMode() => byte(0x00FC02)

// Count how many enemies where knocked out while holding a weapon
// This variation is the current core achievement
achievement(
    title = "Steel Grip", 
    description = "Defeat 10 enemies without dropping your weapon", 
    points = 10,
    trigger = once(HoldingWeapon() == 1) &&
              repeated(10, Player1KOs() > prev(Player1KOs())) && 
              never(WeaponType() != prev(WeaponType())) &&
              never(!HoldingWeapon())
)

// Homework: Adapt the Steel Grip achievement above to use AddHits and AddSource
// similar to Example 2B
```
## Homework 2
A) Adapt the Steel Grip achievement above to use *tally* similar to Example 2B so that multiple knock outs are counted.

Scripts: [Example #2C script with no solution](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/02_Add_Hits/Example_02C_Streets_of_Rage_2.rascript)

Solutions: [Tutorial #2 Solution](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/02_Add_Hits/Solution/readme.md)

---

[Tutorial #0 - Getting Started](../2022-02/rascript.html#tutorial-0---getting-started)  
[Tutorial #1 - Memory Basics](../2022-02/rascript.html#tutorial-1---memory-basics)

All RAScript Tutorials can be found [here](https://github.com/Etron-RA/RetroAchievements/tree/main/Tutorials).