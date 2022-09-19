---
issue: 2022-09
order: 202209-15
layout: article
title: RAScript Tutorials
author: Etron
toc: true
---

# Tutorial #8 – Challenges Part 2

# Overview
This tutorial will show a few examples of how to create speedruns and other time related challenges.  This is the second tutorial on challenges and it will build on the concepts introduced in [Tutorial #7 - Challenges Part 1](../2022-08/rascript.html#tutorial-7--challenges-part-1). The game [Super Mario World](https://retroachievements.org/game/228) was chosen for this tutorial because it is a platforming game where you can replay levels after they are beaten making it perfect for reattempting a speedrun. Additionally, the game can be completed quickly by using secret exits to bypass the standard progression route making it possible to quickly jump to the final confrontation with Bowser.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/08_Challenges_Part_2/Super_Mario_World_Title.png?raw=true" />
</p>
 
# Leaderboard Analogy
Similar to the last tutorial will use leaderboard terminology for the different types of conditions used in a challenge. Each achievement will have a **start**, **cancel**, and **submit** events that control when the achievement is primed. For more information on these events refer to the [previous tutorial](../2022-08/rascript.html#tutorial-7--challenges-part-1).

## Start 
The start condition for a challenge achievement is an event that occurs right before the challenge has started.  

## Cancel
The cancel conditions for a challenge achievement are events that will reset the hit from the start condition.

## Submit
The submit condition for a challenge achievement is the event that occurs once the challenge has been completed.

# Example #8A: Yoshi's Island 1 Speedrun
Yoshi’s Island 1 is the first level in Super Mario World and is one of the easiest levels to beat in the game.  The game gives you 300 seconds to complete the level however, once you reduce that time limit it becomes much more challenging.  When deciding on time limits for speedrun achievements be sure to add a small buffer of extra time to allow for a few mistakes.  Player’s can spend years perfecting a speedrun which is an unreasonable expectation for the average player.  Leave the world record times for leaderboards instead.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/08_Challenges_Part_2/Super_Mario_World_Yoshi_Island.png?raw=true" />
</p>

```
// Super Mario World
// #ID = 228

// $0000CE: [3 byte] 24-bit pointer to level's sprite data
function LevelPointer() => tbyte(0x0000CE)

// $000100: Game mode. Anything 00 to 0a is title screen
//          Goes from 2314 to 2315 at new game start
function GameMode() => byte(0x000100)

// $000DB2: 2 player game flag
function Player2() => byte(0x000DB2) 

// $000DD5: Level Beat
//          [00] = Default value. 
//          [01] = Beat the level using the normal exit.
//          [02] = Beat the level using the secret exit. 
//          [80] = Exiting the level by using Start Select or by dying.
//          [E0] = Save prompt popup in the overworld.
//          Fun Fact: Donut Ghost House has normal and secret exit in reverse.
function LevelBeat() => byte(0x000DD5)

// $000F31: [3 bytes] Time (BCD)
function TimeX00() => byte(0x000F31)
function Time0X0() => byte(0x000F32)
function Time00X() => byte(0x000F33)
function Time() 
{
    return TimeX00() * 100 +
        Time0X0() * 10 +
        Time00X()
}

// $0013BF: 8-bit Level ID
function LevelID() => byte(0x0013BF)

// $0013CF: if = 40 player is entering stage from mid point
function MidPoint() => byte(0x0013CF)

// Shortcut for when a player starts a certain level
function StartLevel(level) 
{
    return GameMode() > 0xa &&
        Player2() == 0 &&
        LevelID() == level &&
        MidPoint() != 0x40 &&
        prev(LevelPointer()) == 0 &&
        LevelPointer() != 0
}

// Shortcut for completing a level (defaults to normal exit)
function ExitLevel(exit = 1)
{
    return prev(LevelBeat()) == 0 &&
        LevelBeat() == exit
}

// Speedrun challenge to complete the level parameter in under the time parameter
// Start: When the player start the level parameter
// Cancels: When the player returns to the world map, title screen, or time elapses
// Submits: When the player exits the level
function LevelSpeedrun(level, time)
{
    start = once(StartLevel(level))
        
    cancel = never(GameMode() == 0) &&
        never(LevelPointer() == 0) &&
        never(Time() < time)
    
    submit = trigger_when(ExitLevel())
    
    return  start && cancel && submit
}

achievement(
     "Example #8A - Yoshi's Island 1 Speedrun",
     "Complete Yoshi's Island 1 in under 240 seconds",
     0,
     LevelSpeedrun(0x29, 240)
)
```

## Start 
The start condition for this challenge occurs when the player starts Yoshi’s Island 1 from the beginning in single player mode.  It’s worth noting that most levels have a checkpoint in the middle that, if the player hits the white tape between the midpoint goal posts, acts as a starting location when the player die’s before completing the level.  Starting from the midpoint would negate the speedrun challenge so the ```StartLevel(level)``` function only triggers when starting from the beginning of the level.  By using a shortcut function like ```StartLevel(level)``` we can easily change which level the achievement is coded for by changing the level ID parameter.

## Cancel
The cancel conditions for this challenge achievement are when the player leaves the level, a game over occurs, or the timer expires.  The achievement uses the level pointer to know when a player is in a level.  When the level is loaded the level pointer is not null (zero) and when the level is unloaded the pointer returns to null (zero).  In this case the pointer’s location is unimportant since we use the level ID to know which level is loaded.<br>

For games that include a level timer like Super Mario World it’s a good idea to use that timer for speedruns.  The player can check their progress with the in-game clock to know how much time they have left to finish the speedrun.  The time display is an unpacked Binary Coded Decimal (BCD) so the code uses the function ```Time()``` to convert it to base 10 decimal.  If the game does not include a timer then you can create an internal timer which will be shown in the next example.

## Submit
The submit condition for this challenge achievement is when the player exits the level through a normal exit.  Some levels have two exits so we need to specify the type of exit.  The ```ExitLevel(exit)``` function is a shortcut which defaults to the normal exit if ```exit = 1``` and the secret exit if ```exit = 2```.  Note that this event will occur every time the player completes a level however, the achievement will only be awarded if the start condition hit is still active.<br>

Scripts: [Example #8A script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/08_Challenges_Part_2/Example_8B_Super_Mario_World.rascript)

# Example #8B: World Speedrun
The ultimate goal of a speedrun is to complete a game in the shortest time possible.  Games often have shortcuts and optional items to collect so you can beat the game without 100% completing it.  At a minimum, Speedruns are categorized by either **100%** runs which required you to complete every level and collect every item, **Any%** runs which allow skipping levels and items, and **Glitch** runs which allow the player use any in-game glitch at their disposal. Depending on the game there are often many more types of speedruns to attempt.

Super Mario World has a total of 96 normal and secret exits which, at the time of writing, took [oosui 1h 21m 17s 530ms to get the 100% world record](https://www.speedrun.com/smw/run/mkeo46xm).  This is a **very long time** to base an achievement on so a better candidate is the 11 Exit speedrun is which, at the time of writing, took [Tsuake 9m 42s 983ms for the world record](https://www.speedrun.com/smw/run/z0pk0wjy).  The 11 Exit is a glitchless run which requires you to take a shortcut through the Star World to skip ahead to Bowser’s Castle.  When adding a time buffer to a multi-level speedrun it’s a good idea to allow for several errors in each level.  Even with adding over six minutes to world record, this example would still be a huge challenge to beat for the average player.  Unless the game is very short a full game speedrun like this example would fit better in a **Bonus** set.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/08_Challenges_Part_2/Super_Mario_world_Bowser.png?raw=true" />
</p>
 
```
// Super Mario World
// #ID = 228

// $000100: Game mode. Anything 00 to 0a is title screen
//          As a word is goes from 2314 to 2315 at new game start
function GameMode() => byte(0x000100)
function GameModeWord() => word(0x000100)

// $000DB2: 2 player game flag
function Player2() => byte(0x000DB2) 

// $0013BF: 8-bit Level ID
function LevelID() => byte(0x0013BF)

// $0013F9: Mario's layer (3 = game end)
function MariosLayer() => byte(0x13F9)

// $001F2E: Stages Cleared
function StagesCleared() => byte(0x001F2E)

// Shortcut for when a player starts a new game file
function NewGame() 
{
    return prev(GameModeWord()) == 2314 && 
        GameModeWord() == 2315 && 
        StagesCleared() == 0 && 
        Player2() == 0
}

// Shortcut for when a player beats bowser and wins the game
function EndGame()
{
    return StagesCleared() > 0 &&
        LevelID() == 49 && 
        MariosLayer() == 3 && 
        GameMode() == 2
}

// Converts the time minutes:seconds:frames to frames (NTSC = 1/60s, PAL = 1/50s)
function TimeSpanNTSC(minutes, seconds, frames) => minutes * 3600 + seconds * 60 + frames
function TimeSpanPAL(minutes, seconds, frames) => minutes * 2500 + seconds * 50 + frames

// Speedrun challenge to complete Super Mario World in under the time parameter
// Start: When the player creates a new game file
// Cancels: When the player returns to the title screen on time elapses
// Submits: When the player defeats bowser
function WorldSpeedrun(time)
{
    start = once(NewGame())
        
    cancel = never(GameMode() == 0) &&
        never(repeated(time, GameMode() > 0x0a))
    
    submit = trigger_when(EndGame())
    
    return  start && cancel && submit
}

achievement(
     "Example #8B - World Speedrun",
     "Defeat Bowser (front door) starting from a new save game file in under 16 minutes",
     0,
     WorldSpeedrun(TimeSpanNTSC(16,0,0))
)
```

## Start 
The start condition for this challenge occurs when the player starts a new game file.  The shortcut function ```NewGame()``` checks that no exits are cleared and that only one player is active when the game mode changes.

## Cancel
The cancel conditions for this challenge achievement are when a game over occurs or the internal timer expires.  Since Super Mario World does not have any overall timer we have setup a timer internal to the achievement code. The code ```never(repeated(time, GameMode() > 0x0a))``` will reset the achievement after the parameter ```time``` frames while player is in-game.  Note that both US and Japanese games are linked so we use the ```TimeSpanNTSC()``` function which converts the time to frames for a 60hz system.  If the linked version was from the Europe region then use the ```TimeSpanPAL()``` function which converts the time to frames for a 50hz system. As a rule the NTSC and PAL games should not be linked to the same set since players on a 50Hz system will have an advantage over players on a 60Hz system. 

## Submit
The submit condition for this challenge achievement is when the player beats bowser. The ```EndGame()``` checks that the player is on the final level when Mario changes layers during the end game cinematics.  The achievement specifies the **Front Door** entrance since it’s possible to enter Bowser’s Castle from the **Back Door** which skips the first half of the level. Note that an additional check is added that at least one exit has been cleared to ensure that the player didn’t use a glitch to skip to the end.

Scripts: [Example #8B script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/08_Challenges_Part_2/Example_8B_Super_Mario_World.rascript)

# Example #8C: Small Boy Challenge
The small boy challenge is to complete a level (or the whole game) without using a power up or riding Yoshi.  Super Mario World has power ups like the fire flower or the cape which can trivialize completing a level. For example, using the cape for the [Yoshi's Island 1 Speedrun](#example-8a-yoshis-island-1-speedrun) would make the challenge too easy since you can fly over the entire level. Additionally, being powered up gives Mario one more hit point therefore the small boy challenge is also a damageless challenge.  Being small does have an advantage, small Mario has a smaller hitbox meaning that small Mario can pass by obstacles that would hit a powered up Mario.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/08_Challenges_Part_2/Super_Mario_World_Small_Boy.png?raw=true" />
</p>

## Homework #8
Using similar logic from [Example 8A](#example-8a-yoshis-island-1-speedrun) create an achievement to beat any level as small Mario and without Yoshi.

## Useful Memory
To complete the homework problem you’ll need the memory addresses:   
0x000019 -> [8-bit] Player's Power: 0 = Small, 1 = Super, 2 = Cape, 3 = Flower   
0x00187A -> [8-bit] Sitting on Yoshi: 0 = None, 1 = On Yoshi 2 = On Yoshi turning   
0x0013BF -> [8-bit] Level ID

|  ID   | Level              |  ID   | Level               |  ID   | Level                 |
| :---: | ------------------ | :---: | ------------------- | :---: | --------------------- |
| 0x01  | Vanilla Secret 2   | 0x1B  | Chocolate Fortress  | 0x38  | Valley Ghost House    |
| 0x02  | Vanilla Secret 3   | 0x1C  | Chocolate Island 5  | 0x39  | Valley of Bowser 2    |
| 0x03  | Top Secret Area    | 0x1D  | Chocolate Island 4  | 0x3A  | Valley of Bowser 1    |
| 0x04  | Donut Ghost House  | 0x20  | Roy's Castle        | 0x3B  | Chocolate Secret      |
| 0x05  | Donut Plains 3     | 0x20  | Iggy's Castle       | 0x3C  | Vanilla Dome 2        |
| 0x06  | Donut Plains 4     | 0x21  | Choco-Ghost House   | 0x3D  | Vanilla Dome 4        |
| 0x07  | Morton's Castle    | 0x22  | Chocolate Island 1  | 0x3E  | Vanilla Dome 1        |
| 0x09  | Donut Plains 2     | 0x23  | Chocolate Island 3  | 0x40  | Lemmy's Castle        |
| 0x0A  | Donut Secret 1     | 0x24  | Chocolate Island 2  | 0x41  | Forest Ghost House    |
| 0x0B  | Vanilla Fortress   | 0x26  | Yoshi's Island 4    | 0x42  | Forrest of Illusion 1 |
| 0x0C  | Butter Bridge 1    | 0x27  | Yoshi's Island 3    | 0x43  | Forrest of Illusion 4 |
| 0x0D  | Butter Bridge 2    | 0x29  | Yoshi's Island 1    | 0x44  | Forrest of Illusion 2 |
| 0x0E  | Ludwig's Castle    | 0x2A  | Yoshi's Island 2    | 0x46  | Forrest Secret Area   |
| 0x0F  | Cheese Bridge Area | 0x2B  | Vanilla Ghost House | 0x47  | Forrest of Illusion 3 |
| 0x10  | Cookie Mountain    | 0x2D  | Vanilla Secret 1    |       |                       |
| 0x11  | Soda Lake          | 0x2E  | Vanilla Dome 3      |       |                       |
| 0x13  | Donut Secret House | 0x2F  | Donut Secret 2      |       |                       |
| 0x15  | Donut Plains 1     | 0x33  | Valley of Bowser 4  |       |                       |
| 0x18  | Sunken Ghost Ship  | 0x37  | Valley of Bowser 3  |       |                       |
| 0x1A  | Wendy's Castle     | 0x38  | Valley Ghost House  |       |                       |

## Solution
[Tutorial #8 Solution](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/08_Challenges_Part_2/Solution/readme.md)

---

[Tutorial #0 - Getting Started](../2022-02/rascript.html#tutorial-0---getting-started)  
[Tutorial #1 - Memory Basics](../2022-02/rascript.html#tutorial-1---memory-basics)  
[Tutorial #2 - Add Hits](../2022-03/rascript.html#tutorial-2---add-hits)  
[Tutorial #3 - Bit Flags](../2022-04/rascript.html#tutorial-3---bit-flags)  
[Tutorial #4 - Arithmetic Operations](../2022-05/rascript.html#tutorial-4---arithmetic-operations)  
[Tutorial #5 - Pointers](../2022-06/rascript.html#tutorial-5---pointers)  
[Tutorial #6 - If/Else](../2022-07/rascript.html#tutorial-6--ifelse)  
[Tutorial #7 - Challenges Part 1](../2022-08/rascript.html#tutorial-7--challenges-part-1)   

All RAScript Tutorials can be found [here](https://github.com/Etron-RA/RetroAchievements/tree/main/Tutorials).