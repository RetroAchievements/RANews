---
issue: 2022-11
order: 202211-15
layout: article
title: RAScript Tutorials
author: Etron
toc: true
---

# Tutorial #9 – Trigger and Measure Together

# Overview
This tutorial will show a few examples of how to create an achievement that uses both the trigger and measure flags together.  The game [Street Fighter II: The World Warrior](https://retroachievements.org/game/11808) was chosen for this tutorial because it is a fighting game that counts both the number of fights you have won and the type of attacks made.  These types of in game statistics work well for showing both what challenges are active and how far the player has gotten into the challenge. You could code it with just triggers however, by adding a measure the player gets both on screen notifications of when the achievement is primed as well as feedback of how far along they are to achieving the challenge.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/09_Trigger_and_Measure/Street_Fighter_2_Title.png?raw=true" />
</p>

## Trigger and Measure Flag Together at Last

The **trigger** and **measure** flags conflict with each other and cannot exist together in the core or in an alt.  This is because you can only put one flag on a line of code at a time.  To use **trigger** and **measure** together you must put them each in separate alts.  The best way to use both flags together is to make a **goal** event that triggers when the player has successfully completed the achievement requirements. Then wrap the **goal** in a ```trigger_when()``` in the first alt and wrap the same **goal** in a ```measured()``` in the second alt.  The following examples will show how to use both flags using a similar method to coding challenges from the previous tutorials.

# Example #9A: Street Fighter II 1CC
To beat the game and become a **World Warrior** you must defeat all of the other seven playable and four boss fighters. The challenge for this achievement is to beat all the fighters in a row without losing a fight. This is a hard achievement since the difficulty ramps up quickly as you progress through the fighters.  Additionally, the computer cheats by being able to perform moves faster, or in some cases, impossible for a human player.  If you ever got stuck on a fighter in the past don’t feel bad, the computer wasn’t playing fair.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/09_Trigger_and_Measure/Street_Fighter_2_Guile_Wins.png?raw=true" />
</p>
 
```
// Street Fighter II: The World Warrior
// #ID = 11808

// $82DB: Attract mode flag
function AttractMode() => byte(0x0082DB)
function AttractActive() => AttractMode() == 1

// $8655: P1 Status (1 = Active)
function Player1Status() => byte(0x008655)
function Player1Active() => Player1Status() == 1

// $8955: P2 Status (1 = Active)
function Player2Status() => byte(0x008955)
function Player2Active() => Player2Status() == 1

// $89CC: Defeated CPU opponents 0b=ending
function DefeatedOpponents() => byte(0x0089CC)

// Challenge to beat the game without using a continue
function Beat1CC()
{
    // Start when player 1 starts the 1st fight
    start = once(Player1Active() && 
        DefeatedOpponents() == 0)    
    
    // Cancel if the attract demo is on, player 2 starts, or player 1 loses a fight
    cancel = never(AttractActive()) && 
        never(Player2Active()) && 
        never(!Player1Active())
        
    // The goal is to beat all 12 fighters
    goal = DefeatedOpponents() == 0xb
    
    // Trigger when the player reaches the goal
    submit = trigger_when(goal)
        
    // Measure how close the player is to the goal
    value = measured(goal)
    
    return start && cancel && (submit || value)
}

achievement(
    title = "Example #9A: Street Fighter II 1CC", 
    description = "Beat the game using only one credit", 
    points = 25,
    trigger = Beat1CC()
)
```
## Start

The achievement uses ```once()``` to add a hit when player one starts the first fight.  The hit will prime the achievement to show the trigger indicator until the **cancel** or **goal** events occur.

## Cancel

The achievement uses ```never()``` to remove the hit from the **start** event when the attract demo is on, player two starts playing, or player one loses a fight.

## Goal

The **goal** requirements are satisfied when the player beats the final boss, M. Bison (or Vega in the Japan region). The code then defines the **submit** event by wrapping the **goal** event in the ```trigger_when()``` function.  Similarly, the **value** event is created by wrapping the same **goal** event in the ``` measured()``` function.  By coding the achievement this way the trigger will continue to show the indicator until the player loses a fight and the achievement overlay will show how many more fights the player has left to win to earn the achievement.

## Coding Alts

When the function ```Beat1CC()``` returns the generated code to the achievement trigger it builds the code using the or operator ```||``` to place the **submit** event in one alt and the **value** event in a second alt.
```
return start && cancel && (submit || value)
```
Note the parenthesis around the **submit** and **value** events.  The parenthesis separates the alt events from the core which will only contain the **start** and **cancel** events.

### Script
Scripts: [Example #9A script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/09_Trigger_and_Measure/Street_Fighter_II_The_World_Warrior_Example_9A.rascript)

# Example #9B: Kimarite
Every character in Street Fighter II has a unique move set of special moves to match there fighting style (except for Ken and Ryu since they were both taught to fight by the same master).  The Sumo wrestler E. Honda has a very powerful special move call the Hundred Hand Slap where his hands slap so fast that they start to blur on the screen.  This special move is easy to perform by rapidly pressing any of the three punch buttons. The goal of this achievement is to hit the opponent 4 times only using the Hundred Hand Slap.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/09_Trigger_and_Measure/Street_Fighter_2_Honda_100_Hand_Slap.png?raw=true" />
</p>
 
```
// Street Fighter II: The World Warrior
// #ID = 11808

// $8008: Event
//        0a=during fight
function Event() => byte(0x008008)

// $82DB: Attract mode flag
function AttractMode() => byte(0x0082DB)
function AttractActive() => AttractMode() == 1

// $83F1: P1 KO flag
function Player1Flag() => byte(0x0083F1)
function Player1KO() => Player1Flag() == 255

// $8547: P1 attack buffer (Honda and Blanka)
function Player1AttackBuffer() => byte(0x8547)

// $8656: P1 Character
function Player1Character() => byte(0x008656)
Ryu = 0
EHonda = 1
Blanka = 2
Guile = 3
Ken = 4
ChunLi = 5
Zangief = 6
Dhalsim = 7

// $86F0: P2 HP
function Player2Health() => byte(0x0086F0)

// $86F1: P2 KO flag
function Player2Flag() => byte(0x0086F1)
function Player2KO() => Player2Flag() == 255

// $8955: P2 Status (1 = Active)
function Player2Status() => byte(0x008955)
function Player2Active() => Player2Status() == 1

// $8AE2: P1 number of attacks done during the round (except Zangief)
function Player1Attacks() => byte(0x008AE2)

// Challenge to hit the oponent 4 times with Hundred Hand Slap and nothing else
function Kimarite()
{
    // Start at the beginning of a round when the fight event changes to 0xa and the player has no hits
    start = once(Player1Attacks() == 0 &&
        prev(Event()) != 0xa &&
        Event() == 0xa)

    // Cancel if the attract demo is on, player 2 starts, player 1 is not E-Honda,
    // either player has been knocked out, or the player has landed an attack other than Hundred Hand Slaps
    cancel = never(AttractActive()) &&
        never(Player2Active()) && 
        never(Player1Character() != EHonda) &&
        never(Player1KO()) &&
        never(Player2KO()) &&
        never(
            prev(Player2Health()) > Player2Health() &&
            Player1AttackBuffer() != 51 && 
            Player1AttackBuffer() != 52 && 
            Player1AttackBuffer() != 53
        )
    
    // The goal is reaching 4 Hundred Hand Slaps without using any other attack
    goal = repeated(4, prev(Player2Health()) > Player2Health())
    
    // Trigger when the player reaches the goal
    submit = trigger_when(goal)
        
    // Measure how close the player is to the goal
    value = measured(goal)
    
    return start && cancel && (submit || value)
}

achievement(
    title = "Example #9B: Kimarite", 
    description = "Successfully hit the opponent 4 times with Hundred Hand Slap and nothing else", 
    points = 5,
    trigger = Kimarite()
)
```
## Start

The achievement uses ```once()``` to add a hit when player one starts any round.  The hit will prime the achievement to show the trigger indicator until the **cancel** or **goal** events occur.

## Cancel

The achievement uses ```never()``` to remove the hit from the **start** event when the attract demo is on, player two starts playing, player one is not E-Honda, either player has been knocked out, or the player has landed an attack other than Hundred Hand Slap.  The final cancel condition is a little more complex and will cancel only when player two loses health while the attack in the attack buffer is not one of the three variations of the Hundred Hand Slap.

## Goal

The **goal** requirements are satisfied when the player hits the opponent with only four Hundred Hand Slaps.  Similarly to the last example, the **goal** is used with a ```trigger_when()``` function to create the **submit** event and used with the ```measured``` function to create the **value** event.

### Script

Scripts: [Example #9B script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/09_Trigger_and_Measure/Street_Fighter_II_The_World_Warrior_Example_9B.rascript)

# Example #9C: One Character Beat
Street Fighter II has a total of eight playable characters to choose from.  Typically fighting game sets have a group of achievements for beating the game using each character.  These achievements are all very similar so you can take advantage of RATools to generate all these achievements using the same function.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/09_Trigger_and_Measure/Street_Fighter_2_Select_Screen.png?raw=true" />
</p>

## Homework #9

Pick any fighter and make a function that will generate an achievement to beat the game using only that fighter.

## Useful Memory

To complete the homework problem you’ll need the memory address:

0x008656 -> [8-bit] P1 Character

|  ID   | Character |
| :---: | --------- |
|  0x0  | Ryu       |
|  0x1  | E.Honda   |
|  0x2  | Blanka    |
|  0x3  | Guile     |
|  0x4  | Ken       |
|  0x5  | ChunLi    |
|  0x6  | Zangief   |
|  0x7  | Dhalsim   |

### Solution
Solutions: [Tutorial #9 Solution](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/09_Trigger_and_Measure/Solution/readme.md)

---

[Tutorial #0 - Getting Started](../2022-02/rascript.html#tutorial-0---getting-started)  
[Tutorial #1 - Memory Basics](../2022-02/rascript.html#tutorial-1---memory-basics)  
[Tutorial #2 - Add Hits](../2022-03/rascript.html#tutorial-2---add-hits)  
[Tutorial #3 - Bit Flags](../2022-04/rascript.html#tutorial-3---bit-flags)  
[Tutorial #4 - Arithmetic Operations](../2022-05/rascript.html#tutorial-4---arithmetic-operations)  
[Tutorial #5 - Pointers](../2022-06/rascript.html#tutorial-5---pointers)  
[Tutorial #6 - If/Else](../2022-07/rascript.html#tutorial-6--ifelse)  
[Tutorial #7 - Challenges Part 1](../2022-08/rascript.html#tutorial-7--challenges-part-1)  
[Tutorial #8 - Challenges Part 2](../2022-09/rascript.html#tutorial-8--challenges-part-2)   

All RAScript Tutorials can be found [here](https://github.com/Etron-RA/RetroAchievements/tree/main/Tutorials).