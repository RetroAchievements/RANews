---
issue: 2022-08
order: 202208-15
layout: article
title: RAScript Tutorials
author: Etron
toc: true
---

# Tutorial #7 – Challenges Part 1

## Overview
This tutorial will show a few examples of how to create deathless, damageless, and weapon limited challenge achievements. A second tutorial is planned afterwards to cover speedruns and other time related challenges.  The topic of challenge achievements is very broad and what challenges are appropriate for a game are completely dependent on the game mechanics.  The game [Mega Man](https://retroachievements.org/game/1448) was chosen for this tutorial because it is a tough yet fair game that has very little Random Number Generator (RNG) events which could mess up a damageless/deathless run.  Damageless runs of the entire game are achievable with enough practice, skill, game mechanic knowledge, and patience (see [Mr. Perfect](https://retroachievements.org/achievement/53290) from the [Mega Man Bonus](https://retroachievements.org/game/6729) set).

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/07_Challenges_Part_1/Mega_Man_Title.png?raw=true" />
</p>


## Challenge Indicators
**Challenge indicators** will appear on the screen when a player is close to obtaining an achievement.  The achievement will also appear as **primed** when the player opens up the Retro Achievement overlay.  An achievement is considered **primed** when all of the conditions, except for the conditions with a **trigger** flag on them, have been met.  **Challenge indicators** give feedback to the player of when an achievement is still achievable and, more importantly, when a challenge has been failed.  It is good practice to keep the number of primed achievements to a minimum to reduce visual clutter. 

For example, a damageless boss achievement should only be **primed** while fighting the boss.  If the player takes damage then the **challenge indicator** should disappear to let the player know they failed the challenge and won’t receive the achievement for this fight.  The challenge achievement should not appear again until the player goes for a rematch with the boss. Similarly, a deathless level achievement should only be **primed** during the challenge level.  If the player dies during the level the **challenge indicator** should disappear until the player retires the level in a different play through. We will go more in-depth with the following Mega Man examples to show how to code challenges with RAScripts.

## Leaderboard Analogy
This tutorial will use leaderboard terminology for the different types of conditions used in a challenge.  We will cover how to script leaderboards in a later tutorial with an eventual goal of making synchronized challenge achievements and leaderboards that start, cancel, and submit with the same code.

### Start
The start condition for a challenge achievement is an event that occurs right before the challenge has started.  This start event should not occur again during the challenge otherwise the challenge maybe restarted again prematurely if the player fails in the middle.  Use the ```once()``` around the start condition to add a hit that will keep the challenge active until it is reset or the  player completes the challenge.  A more complex start condition may require multiple conditions in an **AndNext** chain with a hit on the last condition which can be accomplish by wrapping the entire group of conditions in a ```once()```. Multiple start conditions can be coded by putting each start condition in its own Alt.

### Cancel
The cancel conditions for a challenge achievement are events that will reset the hit from the start condition.  The cancel condition will also remove the **challenge indicator** from the screen if the achievement was **primed**.  There will often be multiple cancel conditions for challenges like a game over, a level change, taking damage, losing a life, and any unique events for the challenge.  Each cancel condition should be wrapped in a ```never()``` command which adds a ResetIf flag to the condition. If a cancel event is multiple conditions then wrap all of the conditions in the ```never()``` command to create an AndNext chain.

### Submit
The submit condition for a challenge achievement is the event that occurs once the challenge has been completed.  If the start condition hit has not been reset by the cancel condition then the achievement will trigger when the submit conditions are met. Using the ```trigger_when()``` command for all of the submit conditions will put a trigger flag on each of the conditions. If a submit event is multiple conditions then wrap all of the conditions in the ``` trigger_when()``` command to create an AndNext chain.

# Example #7A: Blue Bomber
Mega Man is one of the earliest games to give the player the freedom of playing the stages in any order.  When the player defeats a boss they acquire the boss’s special weapon which they can use for the rest of the game.  Every boss has a weakness to one of the special weapons so there is an optimal order to beating each stage which will make the game easier.  However, you do not need to exploit the boss’s weakness since every boss can be defeated using the default weapon, the Mega Buster.  Bombman is one of the easier bosses to beat which is why he was chosen for the damageless example.  Note the achievement can easily be modified for any of the other five bosses by changing the stage number and where the ready room is in the level.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/07_Challenges_Part_1/Mega_Man_Bombman.png?raw=true" />
</p>

```
// Mega Man
// #ID = 1448

// $001B: Universal stage scrolling progress big parts
function StageBombmanBoss() => byte(0x00001B) == 22

// $0031: Stage id
function StageID() => byte(0x000031)

// $0041: Solid pause
function SolidPause() => byte(0x000041) == 1

// $006A: Health
function Health() => byte(0x00006A)

// $00BB: Stage clear flag
function StageClear() => byte(0x0000BB) == 1

// Start at the beginning of the Bombman boss fight
bombmanDamagelessStart = once(StageBombmanBoss() && StageID() == 2)

// Cancel if on the stage select screen, health lost, or the pause glitch used
bombmanDamagelessCancel = never(StageSelect()) && 
    never(Health() < prev(Health())) &&
    never(SolidPause())

// Submit when the stage is cleared
bombmanDamagelessSubmit = trigger_when(StageClear())

achievement(
    title = "Example 7A: Blue Bomber",
    description = "Defeat Bombman without taking damage (pause glitch not allowed)", 
    points = 10,
    trigger = bombmanDamagelessStart && bombmanDamagelessCancel && bombmanDamagelessSubmit
)
```
## Start Conditions
The challenge is set to begin when the player enters the boss’s ready room right before the fight.  To keep the **challenge indicator** active during the fight a ```once()``` command records a hit while in the ready room.  It is important the condition used to start the challenge does not occur during the challenge.  If the start condition occur during the bosses fight the challenge may be restarted even if the player has taken damage.  For damageless challenges like this it is ideal to have the start condition occur in-between the end of the level and before the boss fight.

## Cancel Conditions
The challenge will cancel if the player is on the stage selection screen, takes damage, or pauses the game.  Each of these cancel conditions use a ```never``` command to reset the hit recorded during the start condition, thus removing the **challenge indicator** and blocking the player from getting the achievement if they beat the boss.  The cancel condition for taking damage is self-explanatory however the other two cancel conditions might not be so obvious.  Canceling when we are at the stage select screen will reset the challenge if the player returns to the stage select screen for any reason.  Canceling on pause is game specific, Mega Man has an infamous glitch that allows the enemy damage cool down timer to continue counting down while the game is paused.  The result is that you can hit an enemy multiple times with one shot if you mash the pause button while the projectile is over them.  By canceling on pause we don’t give the player credit for beating the boss with the pause glitch.

## Submit Conditions
The challenge will be triggered when the submit conditions are true.  The submit conditions use a ```trigger_when()``` command to add a trigger flag to this condition.  Since the boss beat flag is the last condition to be met, putting a trigger flag on that condition will cause a **challenge indicator** to appear while fighting the boss.  It is important that the submit conditions do not occur until the boss is defeated or the achievement will trigger prematurely.

Scripts: [Example #7A script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/07_Challenges_Part_1/Example_7A_Mega_Man.rascript) 

# Example #7B: MM1 Survivalist I (Gutsman)
Mega Man is a difficult game that relies on quick reaction time, knowledge of enemy patterns, and memorization of the order for disappearing blocks.  However, the game has very little Random Number Generation (RNG) so once you learn a pattern it will be the same the next time.  Despite its difficulty, completing a stage without dying is a reasonable challenge that most players can complete with a little practice.  Gutsman has one of the easier stages to beat which is why he was chosen for the deathless stage example.   Like the damageless challenge, this achievement can easily be modified for any of the other five bosses by changing the stage number on the start condition.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/07_Challenges_Part_1/Mega_Man_Survival.png?raw=true" />
</p>

```
// Mega Man
// #ID = 1448

// $001B: Universal stage scrolling progress big parts
function StageStart() => byte(0x00001B) == 1

// $0031: Stage id
function StageID() => byte(0x000031)

// $0036: [8-bit] Stage Select (0xbd when selecting stage)
function StageSelect() => byte(0x000036) == 0xbd

// $0041: Solid pause
function SolidPause() => byte(0x000041) == 1

// $0071: Ammount of Magnet Beam left
function MagnetBeamAmmo() => byte(0x000071)

// $00A6: Lives
function Lives() => byte(0x0000A6)

// $00BB: Stage clear flag
function StageClear() => byte(0x0000BB) == 1

// Start at the beginning of Gutsman's stage
gutsmanDeathlessStart = once(StageStart() && StageID() == 5)

// Cancel if on stage selection screen, life lost, pause glitch used, or magnet gun used
gutsmanDeathlessCancel = never(StageSelect()) && 
    never(prev(Lives()) > Lives()) &&
    never(SolidPause()) && 
    never(prev(MagnetBeamAmmo()) > MagnetBeamAmmo())

// Submit when the stage is cleared
gutsmanDeathlessSubmit = trigger_when(StageClear())

achievement(
    title = "Example 7B: MM1 Survivalist I (Gutsman)", 
    description = "Complete Gutsman's Stage without losing a life, pausing, or Magnet Beam (Weapon Menu is OK)", 
    points = 5,    
    trigger = gutsmanDeathlessStart && gutsmanDeathlessCancel && gutsmanDeathlessSubmit
)
```
## Start Conditions
The challenge is set to begin when the player is at the beginning of Gutsman’s stage.  To keep the **challenge indicator** active during the stage a ```once()``` command records a hit while on the first screen of the stage.  The challenge will restart if the player dies early in the stage since they will be spawned back at the beginning.  Once the player gets past the first check point they will have to survive until they beat Gutsman or they will fail the challenge and have to restart the stage from the beginning.

## Cancel Conditions
The challenge is cancelled by changing the stage, losing a life, pausing the game, or using the Magnet Beam weapon. Each of these cancel conditions use a ```never``` command to reset the hit from the start condition, thus removing the **challenge indicator** and blocking the player from getting the achievement if they beat the stage.  Obviously, if the player loses a life the challenge is canceled.  Similar to [Example 7A](#example-7a-blue-bomber), the achievement is canceled when the player returns to the stage select screen for any reason.  The achievement is also reset if the player abuses the pause glitch to get through the level.  The Magnet Beam is a special weapon which creates a temporary platform that the player can use to avoid tricky parts of the level. By canceling when the Magnet Beam ammo decrements we allow the player to accidentally select the Magnet Beam without punishment while still limiting its use in the stage.

## Submit Conditions
Similar to [Example 7A](#example-7a-blue-bomber), the achievement will trigger when the player beats Gutsman while the hit from the start condition is still active.  If any of the cancel conditions occur during the challenge the achievement will be blocked when the player completes the stage.

Scripts: [Example #7B script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/07_Challenges_Part_1/Example_7B_Mega_Man.rascript)

# Example #7C: Master of the Robot Busters (C)
One of the most impressive mechanics of the Mega Man formula is the fact that all six of the initial starting stages can be beat with the default weapon, the Mega Buster.  This is the main factor that allows the player the freedom to choose the stage order.  Some stages are harder to beat with the Mega Buster than others which is reflected in the amount of points rewarded.  The Mega Buster challenge is a staple of every Mega Man set.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/07_Challenges_Part_1/Mega_Man_Buster.png?raw=true" />
</p>

## Homework #7
Using similar logic from [Example 7A](#example-7a-blue-bomber) and [Example 7B](#example-7b-mm1-survivalist-i-gutsman) create an achievement to beat Cutman’s stage (ID 0) using only the Mega Buster (pause glitch is allowed for this achievement).

## Mega Weapons
To complete the homework problem you’ll need the following memory addresses for all of the Mega Weapons.

| Address | Weapon Type         |
| :-----: | ------------------- |
|  $006B  | Rolling Cutter Ammo |
|  $006C  | Ice Slasher Ammo    |
|  $006D  | Hyper Bomb Ammo     |
|  $006E  | Fire Storm Ammo     |
|  $006F  | Thunder Beam Ammo   |
|  $0070  | Power Arm Ammo      |
|  $0071  | Magnet Beam Ammo    |

### Solution
[Tutorial #7 Solution](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/07_Challenges_Part_1/Solution/readme.md)

---

[Tutorial #0 - Getting Started](../2022-02/rascript.html#tutorial-0---getting-started)  
[Tutorial #1 - Memory Basics](../2022-02/rascript.html#tutorial-1---memory-basics)  
[Tutorial #2 - Add Hits](../2022-03/rascript.html#tutorial-2---add-hits)  
[Tutorial #3 - Bit Flags](../2022-04/rascript.html#tutorial-3---bit-flags)  
[Tutorial #4 - Arithmetic Operations](../2022-05/rascript.html#tutorial-4---arithmetic-operations)  
[Tutorial #5 - Pointers](../2022-06/rascript.html#tutorial-5---pointers)  
[Tutorial #6 - If/Else](../2022-07/rascript.html#tutorial-6--ifelse)  

All RAScript Tutorials can be found [here](https://github.com/Etron-RA/RetroAchievements/tree/main/Tutorials).