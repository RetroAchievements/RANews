---
issue: 2022-12
order: 202212-15
layout: article
title: RAScript Tutorials
author: Etron
toc: true
---

# Tutorial #10 – Strings

## Overview

This tutorial will show a few examples of how to create an achievement that uses strings.  The game [Rez](https://retroachievements.org/game/3419) was chosen for this tutorial because it is a rhythm based shoot ‘em up that uses strings for the currently loaded area and boss model. Another reason for picking Rez is that, like most disc based games, the GD-ROM itself has a name which can be used for identifying which region the player is using.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/10_Strings/Rez_Title_Screen.png?raw=true" />
</p>
 
## Strings

Strings are a sequenced array of values that represents text in a computer.  Each value in the array represents a character in the string and what value represents a character depends on the encoding.  The words you are reading right now are actually numeric values that the computer translates using an encoding standard, and then referencing a font table, prints the letters on the screen or on paper.

## Encodings 

There are many encoding standards that currently exist and the one we will be using in the tutorial is ASCII. When most retro games where developed ASCII was the main encoding standard however, newer games may use a different type of encoding so it is good to be aware that other encodings exists. Some more common encodings are:

### ASCII

[American Standard Code for Information Interchange (ASCII)](https://en.wikipedia.org/wiki/ASCII) was the industry standard for early personal computers. It define 128 different characters and uses a byte per character to keep the memory aligned with 8-bit architectures.  ASCII includes special characters used by printers and teletypewriters that will not be displayed on the screen.   The table below illustrates what the string “Hello World!” would look like as an ASCII string.  Note the zero at the end of the string, often strings are null terminated so the computer knows when the string array is done.  

|   Index   |   0   |   1   |   2   |   3   |   4   |   5   |   6   |   7   |   8   |   9   |  10   |  11   |    12    |
| :-------: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :------: |
| Character |   H   |   e   |   l   |   l   |   o   |       |   W   |   o   |   r   |   l   |   d   |   !   | **NULL** |
|    Hex    |  48   |  65   |  6c   |  6c   |  6f   |  20   |  57   |  6f   |  72   |  6c   |  64   |  21   |    00    |

### Unicode

[Unicode (UTF)](https://en.wikipedia.org/wiki/Unicode) is the current encoding standard that modern computers use.  To keep the UTF backwards compatible with ASCII the first 128 characters are the same in both encodings. A UTF-8 string will look very similar to an ASCII string since it also uses a character per byte.  To support characters for all languages internationally, UTF-16 expanded the encoding definition to use 16 bits per character meaning a total possible 65,536 characters.  Other UTF standards exist however UTF-16 is the most common today since it can represent any language.  The table below illustrates what the string “Hello World!” would look like as an UFT-16 string.  Note that since the encoding is 16-bit, each index goes up by two instead of one like the ASCII encoding.  However, since the string is written with English characters the values are the same as ASCII values above with zeros padding the extra bits.

|   Index   |   0   |   2   |   4   |   6   |   8   |  10   |  12   |  14   |  16   |  18   |  20   |  22   |    24    |
| :-------: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :------: |
| Character |   H   |   e   |   l   |   l   |   o   |       |   W   |   o   |   r   |   l   |   d   |   !   | **NULL** |
|    Hex    | 0048  | 0065  | 006c  | 006c  | 006f  | 0020  | 0057  | 006f  | 0072  | 006c  | 0064  | 0021  |   0000   |

# Example #10A: Region Detection
Disc based systems gives each release a unique name that can be used to detect which region the player is using.  The name for the disc is often found in the same region of memory used by the operating system to help identify the game.  Rez has a Japanese release named “HDR-0178” and a European/North American released named “MK-5119250” which are both found at 0x8040.  If you can find the disc name for your game online then you can search for it in the memory inspector using the “ASCII Text” filter. The Developer Documentation has some [console specific tips](https://docs.retroachievements.org/Console-Specific-Tips/#playstation) of where you would find the disc name for PlayStation games.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/10_Strings/Dreamcast_logos.png?raw=true" />
</p>

```
// Rez
// #ID = 3419

// $008040: [ASCII] Name of the GD-ROM disc in drive:
//          JPN = "HDR-0178"
//          US/EU = "MK-5119250"
function GDROM(offset = 0) => 0x8040 + offset

//-------------------------------------------------------------------------
// Helper Functions

// Check if the string hex values equal the hex values at the passed address
function StringCompare(address, string)
{
    return all_of(range(0, length(string) - 1), i => byte(address + i) == string[i])
}

// "HDR-0178" = Japan GD-ROM Name
JapanDisc = [0x48,0x44,0x52,0x2D,0x30,0x31,0x37,0x38]

// "MK-5119250" = EU GD-ROM Name
EuDisc = [0x4D,0x4B,0x2D,0x35,0x31,0x31,0x39,0x32,0x35,0x30]

achievement(
    "Example #10A - Japan Region",
    "Start the game with the Japan region disc",
    0,
    StringCompare(GDROM(), JapanDisc)
)

achievement(
    "Example #10A - EU Region",
    "Start the game with the EU region disc",
    0,
    StringCompare(GDROM(), EuDisc)
)
```
## Converting ASCII to hexadecimal
You could convert an ASCII string to hexadecimal using a table however, that is both time consuming and error prone.  If you have several strings to convert there are many online websites that will do the conversion for you like the [Online Hex Tools](https://onlinehextools.com/convert-ascii-to-hex).

## StringCompare
The function StringCompare is passed the starting memory **address** of where the disc name is and an array of the expected hexadecimal values at that location.  The function uses **all_of()** to iterate through the array and creates a condition for each letter in order.  As the function iterates through the array it also iterates through the memory looking for a one to one match with the values in the array.  Note that strings are case sensitive since capital ‘A’ does not have the same value as lowercase ‘a’.

Scripts: [Example #10A script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/10_Strings/REZ_Example_10A.rascript)

# Example #10B: Eden
In Rez you control a hacker named Swayzak who is trying to infiltrate a computer system to stop a corrupt AI named Eden.  The game is a hybrid rhythm rail shooter where the area and your shots are timed to the music to create a sense of synesthesia.  The background models for each area is an ASCII string so instead of looking at area numbers we are looking for a specific area name. The final area is where Swayzak confronts Eden after a gauntlet of bosses that are similar to the bosses in the previous four areas.  The example below uses the model name for the end movie after Eden is beat to detect the end of the game.

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/10_Strings/Rez_End_Boss.png?raw=true" />
</p>

 ```
// Rez
// #ID = 3419

// $201248: [8-bit] Immortal Cheat (0 = off, 1 = on)
function ImmortalCheat() => byte(0x201248)

// $201250: [8-bit] Overdrive Cheat (0 = off, 1 = on)
function OverdriveCheat() => byte(0x201250)

// $201270: [float] Boss Health
function BossHealth() => float(0x201270)

// $20C124: [ASCII] Current model loaded index 0
//          "eden_d5.pmm" = Form 5 of the final boss end movie
//          ... note rest of string notes removed for brevity, see online code notes for full list
function ModelLoaded(offset = 0) => 0x20C124 + offset

// $20d8d4: [8-bit] Game Type (0 = Travelling, 2 = How To Play, 3 = Play, 4 = Score, 5 = Beyond)
function GameType() => byte(0x20d8d4)

// $210AC4: [24-bit] Game Pointer (null in menu)
function GamePointer() => tbyte(0x210AC4)

// $28DE38: [8-bit] Area (0-9)
//          Areas = {0:"Area 1", 1:"Area 2", 2:"Area 3", 3:"Area 4",  4:"Area 5", 
//            5:"Area 5 Bosses", 6: "How to Play", 7:"Boss Rush", 8:"Lost Area", 9:"Trace Mission"}
function Areas() => byte(0x28DE38)

// $960094: [32-bit] Game Mode (0xFFFFFFFF when in game, otherwise in menu)
function GameMode() => dword(0x960094)

//-------------------------------------------------------------------------
// Hex array string definitions

// "eden_d5.pmm" hex array string before the credits
GameWon = [0x65,0x64,0x65,0x6E,0x5F,0x64,0x35,0x2E,0x70,0x6D,0x6D,0x0]

//-------------------------------------------------------------------------
// Helper Functions

// Check if the string hex values equal the hex values at the passed address
function StringCompare(address, string)
{
    return all_of(range(0, length(string) - 1), i => byte(address + i) == string[i])
}

//-------------------------------------------------------------------------
// Menu item selections

// Areas
DirectAssault = 0
Area1 = 0
Area2 = 1
Area3 = 2
Area4 = 3
Area5 = 4
BossRush = 7
LostArea = 8
TransMission = 9

// Menus
TravellingMenu = 0
HowToPlayMenu = 2
PlayMenu = 3
ScoreMenu = 4
BeyondMenu = 5

// Game state constant
InGame = 0xffffffff

// Conditions when normal play menu selection is made
function AreaChallenge(area)
{
    // Start when the player begins area5
    start = once(
                ImmortalCheat() == 0 && 
                OverdriveCheat() == 0 &&
                prev(GamePointer()) == 0 && 
                GamePointer() != 0 &&
                GameType() == PlayMenu &&
                Areas() == area
            )
    // Cancel  when the player gameovers or exits the game
    cancel = never(
                prev(GameMode()) == InGame &&
                GameMode() != InGame
            )
            
     // Submit when the player wins the game
    submit = trigger_when(StringCompare(ModelLoaded(), GameWon))
            
    return start && cancel && submit
}

// Achievement for beating the final area
achievement(
    "Example #10B: Eden",
    "Complete Area 5",
    10, 
    AreaChallenge(Area5)
)
```

## Start
The challenge starts when the player selects area five from the play menu. Since the menu selection changes as the player moves the cursor instead the achievement looks at when the game pointer goes from null to not null to tell when the game has started.  There is immortal and infinite overdrive cheats that you can unlock so the achievement will not start if either cheat is active.
## Cancel
The challenge cancels when the player dies or if the player exits the area.  This event is determined by when the game mode changes from the in game value of 0xffffffff to anything else.

## Submit
The challenges submit when the background model “eden_d5.pmm” is loaded during the final movie of the game.  Since the model name is a string the **StringCompare()** function is used to detect when the final movie is loaded.

Scripts: [Example #10B script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/10_Strings/REZ_Example_10B.rascript) 

# Example #10C: Boss Types
The type of boss fight at the end of an area is based on the percentage of enemies shot down.  If the player shoots down less than 90% then they will fight the Mega boss, 98% to 90% is a Giga boss, and above 98% is the Tera boss.  The Tera version of the boss is the hardest to beat, followed by the Giga boss, making the Mega is easiest of the boss types.  To match their increased difficultly the Tera and Giga bosses give a bonus score when beat. 

<p align="center">
  <img src="https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/10_Strings/Rez_Venus_Tera.png?raw=true" />
</p>
 
## Homework #10
Pick any of bosses and make a challenge to beat the Giga or Tera version of that boss.
## Useful Memory
To complete the homework problem you’ll need the memory address:  
0x2003BC -> [32-bit] Boss Pointer (not null when boss is spawned)  
0x201270 -> [float] Boss Health (1.0 when full and 0.0 when dead)

The four boss types string locations:   
0x3A3304 -> [ASCII] Mars Boss Type ("Mars[Mega]", "Mars[Giga]", and "Mars[Tera]")   
0x3A7794 -> [ASCII] Uranus Boss Type ("Uranus[Mega]", "Uranus[Giga]", and "Uranus[Tera]")   
0x3A91F8 -> [ASCII] Venus Boss Type ("Venus[Mega]", "Venus[Giga]", and "Venus[Tera]")   
0x3ADFF8 -> [ASCII] Earth Boss Type ("Earth[Mega]", "Earth[Giga]", and "Earth[Tera]")

Solutions: [Tutorial #10 Solution](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/10_Strings/Solution/readme.md)

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
[Tutorial #9 - Trigger and Measure Together](../2022-09/rascript.html#tutorial-9--trigger-and-measure-together)   

All RAScript Tutorials can be found [here](https://github.com/Etron-RA/RetroAchievements/tree/main/Tutorials).