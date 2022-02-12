---
issue: 2022-02
order: 202202-15
layout: article
title: RAScript Tutorials
author: Etron
toc: true
---

# Tutorial #0 - Getting Started

## Getting the Right Tools
Before you start scripting you will need to download the newest release of [RATools](https://github.com/Jamiras/RATools/releases). The program needs a little setup before you can use it:
1) Open the settings menu by clicking on *File -> Settings…*
2) Enter your in name in the *User Name* textbox
3) Click **Add** and browse to the file location of RALibRetro. The icon next to the file location will change to a green checkmark if the emulator was correctly detected.
4) (Optional) Click on the *Colors* tab and click on the **Dark Theme** button.
5) Press the **OK** button at the bottom of the screen.<br>

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/00_Getting_Started/RATools_Settings.PNG" />
</p>
 
## Importing Code
When first learning RAScripts it can be a little daunting to know where to start.  One good method of learning how to write scripts is to import existing achievements into RATools.  This tutorial will focus on how to import a script into RATools, how to clean up the script if necessary, and how to update changes back in to RALibRetro. There are several cases were you would want to import code with RATools:<br>
* Learning how to code a specific achievement
* Fixing tickets
* Converting existing code to an RAScript
* Creating Rich Presences and/or Leaderboards<br>

### Importing Code Steps
If you are just learning RAScripts then it is extremely useful to import a set your familiar with to see how it looks in script form. To import a new script:<br>
1) Load and play a game in RALibRetro (or any of the RA emulators that support editing achievements).  You only need to start playing the game which will trigger downloading the necessary achievement data to the RACache folder.
2) Record the game id number which can be found on the top of the menu item *RetroAchievements -> Asset List*.  For this example we will be looking at Sonic the Hedgehog which is game id 1.<br>

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/00_Getting_Started/Assets_List.PNG" />
</p>
 
1) Open RATools and click on the menu item *File -> New Script*
2) Enter the *Game ID* number in the top left and press the **Search** button
3) All of the achievements, rich presence, and leaderboards will show up on the left panel and all of the game notes will show up on the right.
4) Add a checkmark next to the achievements you want to import and select how you want to filter code notes.  When in doubt use All for both the Filter and Dump Notes so that all of the code notes will be included in the new script.
5) Press the **Create** button to have RATools generate the script<br>

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/00_Getting_Started/New_Script.PNG" />
</p>

## Cleaning up Code
When you import a new script, RATools will generate scripts with the memory addresses and values. Below is an example of what the achievement “Amateur Collector” looks like when imported.
```
achievement(
    title = "Amateur Collector", description = "Collect 20 Rings", points = 2,
    id = 2, badge = "00199", published = "2012-11-02 12:03:12 AM", modified = "2021-03-01 5:48:45 PM",
    trigger = word(0x00FE20) >= 20 && word(0x00FFF0) == 0 && byte(0x00FFFB) == 0 && byte(0x00F601) == 12
)
```
To make the script easier to understand and maintain it is recommended that you replace the memory address and constant values with variables. By using the find/replace function (Ctrl+H) in RATools you can replace all of the instances of the same memory with variables quickly.  Then make a variable before the function for each replaced address. For this example we will replace:<br>
* **Find** word(0x00FE20) -> **Replace** Rings
* **Find** word(0x00FFF0) -> **Replace** DemoMode
* **Find** word(0x00FFFB) -> **Replace** DebugMode
* **Find** byte(0x00F601) -> **Replace** StageType
* **Find** 12 -> **Replace** SpecialStage

```
Rings = word(0x00FE20)
DemoMode = word(0x00FFF0)
DebugMode = word(0x00FFFB)
StageType = byte(0x00F601)
SpecialStage = 12

achievement(
    title = "Amateur Collector", description = "Collect 20 Rings", points = 2,
    id = 2, badge = "00199", published = "2012-11-02 12:03:12 AM", modified = "2021-03-01 5:48:45 PM",
    trigger = Rings >= 20 && DemoMode == 0 && DebugMode == 0 && StageType == SpecialStage
)
```
Notice how you can easily read the above function and understand what is going on.  By using the find and replace method any achievement that uses the memory word(0x00FE20) will now reference Rings instead. The next step would be to use functions for similar types of achievements.  For example, the above ring collecting achievement has a 100 and 200 rings variation where the only difference is the number of rings to collect.  There is an example of how to make a function for this type of achievement in [Example 1A](#example-1a).

## Comparing Code
If you wish to see how the script changes you made compare to what’s in the core then select the achievement from the list on the left panel. A filled in circle next to an achievement indicates that it is new and does not exist in core, a half circle indicates the achievement has changed from the core, and a hollow circle means that the script matches the core. Lines added by the script will be colored green and lines remove will be colored red. To get back to the code view, click on the script name at the top left. Note that RATools has some optimizations built in so it will automatically improve existing code.  The example below shows such a case where the optimizations has made the code cleaner although no changes were made in the script.<br>

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/00_Getting_Started/Code_Compare.PNG" />
</p>

## Updating Code
Once you are ready to test you can export the updated code back into RALibRetro with *Edit -> Update Local*.  Note that the script must be error free to proceed with the update. Select all of the achievements you wish to update and press the **OK** button.  Your new updates will appear next time you open RALibRetro. If RALibRetro was open during the update you’ll need to select the achievements that were updated and press the **Reset** button to reload them from the local cache.

## Homework
1. Import an existing game in to RATools.
2. Pick an achievement and replace the memory address with variables using the find and replace technique.
3. Make a small change to an achievement and use the compare panel to see what the change looks like.


# Tutorial #1 - Memory Basics

## Overview
This tutorial will show a few examples of how to use both variables and functions to create some basic achievements in RAScript.  [Sonic the Hedgehog](https://retroachievements.org/game/1) was chosen as the tutorial example for its simple memory and because it is such a well know title.  The [example script](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/01_Memory/Example_01_Sonic_the_Hedgehog.rascript) will be used to highlight aspects of the tutorial.

Note that this tutorial will touch on some programming fundamentals but it will not go in to depth.  If you are new to the programming world there several free sites online that would be a good introduction.  This series of tutorials will use video links from [Khan Academy](https://www.khanacademy.org/) to help explain programming basics where appropriate.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/01_Memory/Sonic_Title.png" />
</p>

## Variables
Variables are abstract data elements that allow the programmer to store and manipulate different types of data.  As a programmer you can create and use variables as needed to accomplish your goal. If you are unfamiliar with the concept of variables then review the [Variables](https://www.khanacademy.org/computing/computer-programming/programming/variables/pt/intro-to-variables) and [More on Variables](https://www.khanacademy.org/computing/computer-programming/programming/variables/pt/more-on-variables) videos from Khan Academy.

In RAScripts a variable can be:
* **Integers** - Whole numbers that range from -2,147,483,648 to 2,147,483,647.
* **Floats** - Real numbers that range from -3.4E+38 to +3.4E+38.
* **Strings** - Text values that are surrounded by quotation marks.
* **Conditions** - Binary logic expressions that yield true or false values.  Achievement logic are conditions and the achievement is triggered when all of the conditions are true.
* **Arrays** – Arrays are sequential memory that can be indexed by an integer. Arrays are commonly used with for loops and will be covered there.
* **Dictionaries** – Dictionaries are memory that can be indexed by either an integer or string using hash maps. Dictionaries are commonly used with rich presence and will be covered there.

The following code is using variables to abstract memory locations with easy to understand names.  For example, it’s much easier to understand what the variable *Rings* is used for instead of *byte(0xFE20)*. One major point is that variables must be declared before you use them, therefore many scripts declare variables right at the beginning.
```
// $F601: [8-bit] Stage type
//        0x10 = special
//        0x0C = normal?
StageType = byte(0xF601)

// $FE10: [16-bit] Current Act and Zone Together
Level = word(0xFE10)

// $FE17: [8-bit] Current special stage
//        0 = White Emerald
//        1 = Blue Emerald
//        2 = Yellow Emerald
//        3 = Purple Emerald
//        4 = Green Emerald
//        5 = Red Emerald
SpecialStage = byte(0xFE17)

// $FE20: [8-bit] Ring counter
Rings = byte(0xFE20)

// $FE56: [8-bit] Chaos Emeralds Count (range 0-6)
ChaosEmeralds = byte(0xFE56)

// $FFE1: [8-bit] Level Select Active (0 = not active)
LevelSelect = byte(0xFFE1)

// $FFF0: [8-bit] Demo Mode Active (0 = not active)
DemoMode = byte(0xFFF0)

// $FFFB: [8-bit] Debug Mode active (0 = not active)
DebugMode = byte(0xFFFB)
```
## Functions
Functions are modules of code that can be reused as many times as needed. If you find yourself writing a repetitive piece of code it would often be better written as a function.  When you call a function all of the code inside of the function is ran, then the function returns a result variable once complete. If you are unfamiliar with the concept of functions then review the [Functions](https://www.khanacademy.org/computing/computer-programming/programming/functions/pt/functions), [Function Parameters](https://www.khanacademy.org/computing/computer-programming/programming/functions/pt/function-parameters), and [Function Return Values]( https://www.khanacademy.org/computing/computer-programming/programming/functions/pt/function-return-values) videos from Khan Academy.

Like variables, functions need to be declared before they are called, therefore this example defines the following functions after the memory variables are defined. We define some helper functions that help further abstract the code from the raw memory address and values which help make it easier to understand.  These helper functions will be used later in the examples.

```
// Check if we are in a normal stage
function InNormalStage() => StageType == 0xC

// Check if we are in a special stage
function InSpecialStage() => StageType == 0x10

// Check for the transition between two levels
function Transition(last, next) => prev(Level) == last && Level == next

// The Active function handles the level select, debug, and demo checks.
// This function should be added to each achievement for cheat protection
function Active()
{
    return LevelSelect == 0 &&
        DemoMode == 0 &&
        DebugMode == 0
}
```
The InNormalStage() and InSpecialStage() functions are used as shortcuts that return a condition to check if the player is currently in a normal stage or a special stage. The Active() function returns a more complicated condition that handles the demo and cheat protection for the set.  The benefit of wrapping up all of the protection conditions in one function is that if a new type of protection was needed, then you could simply update the Active() function and each achievement using Active() will get updated with the new protection.

The Transition() function is unique since it takes the parameters *last* and *next* which change how the function operates.  You can use the parameters inside a function like variables which only exist inside of the function.  In this case the function checks if previous (delta) value of the level is the *last* value and current value of the level is the *next* value.  A different condition will be created depending on the parameters that were used.

# Example 1A

## Example 1A - Counting Rings
Rings are the main object which Sonic collects and Sonic gets a life for every 100 rings accumulated. The memory for rings is a byte which makes it easy to check when the value of the rings goes above a certain threshold. To make sure that the player is not watching the demo or cheating the following code adds the Active() and InNormalStage() functions to the trigger condition.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/01_Memory/Sonic_Rings.png" />
</p>

```
// Create an achievement for when the player collects X rings
function CollectRings(count)
{
    achievement(
        title = "Example 1A: " + count + " Rings",
        description = "Collect " + count + " Rings",
        points = 0,
        trigger = Active() && 
            InNormalStage() &&
            Rings >= count
    )
}

// Create 3 tiered achievements for collecting rings
CollectRings(15)
CollectRings(100)
CollectRings(200)
```

### Example Translation
To help understand how this script is compiled by RATools we will dissect it step by step until we get to the code used in RALibRetro.  Note that this might not be the exact steps the compiler takes however, it should give you a good picture of how the script is interpreted. We’ll use the function to collect 15 rings as an example.  The compiler will use the same process for each of the achievement functions.
 ```
CollectRings(15)
```
Being a function the compiler will jump to CollectRings() and use 15 in place of the parameter *count*.
```
achievement(
    title = "Example 1A: 15 Rings",
    description = "Collect 15 Rings",
    points = 0,
    trigger = Active() && 
        InNormalStage() &&
        Rings >= 15
)
```
Next the compiler will jump to the functions Active() then InNormalStage() which would be the equivalent of writing.
```
achievement(
    title = "Example 1A: 15 Rings",
    description = "Collect 15 Rings",
    points = 0,
    trigger = LevelSelect == 0 &&
        DemoMode == 0 &&
        DebugMode == 0 && 
        StageType == 0xC &&
        Rings >= 15
)
```
Finally the variables would be replaced with the actual memory addresses.
```
achievement(
    title = "Example 1A: 15 Rings",
    description = "Collect 15 Rings",
    points = 0,
    trigger = byte(0xFFE1)  == 0 &&
        byte(0xFFF0) == 0 &&
        byte(0xFFFB)== 0 && 
        byte(0xF601) == 0xC &&
        byte(0xFE20) >= 15
)
```
Even though the above code is equivalent to what we started with, it would be more difficult to understand what is going on if it was written like this.  Now that we are down to checking memory locations and values, the code can be converted into something that RALibRetro would understand.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/01_Memory/Example_1A.PNG" />
</p>

# Example 1B

## Example 1B - Level Transitions
Sonic the Hedgehog is divided into seven zones each with three acts (except the final zone which is an end game boss battle).  It appears that the developers changed around the order of the zones and acts since they are non-sequential.  This means we need to know the last and next level id to detect a level transition. Note that in the code below, a series of variables are declared for each level in the game.  That way when we are looking for a level transition we can use the name of the level rather than needing to know the id value.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/01_Memory/Sonic_Boss.png" />
</p>

```
// Shortcut variables for each level
GreenHillZoneAct1 = 0x0000
GreenHillZoneAct2 = 0x0001
GreenHillZoneAct3 = 0x0002
MarbleZoneAct1 = 0x0200
MarbleZoneAct2 = 0x0201
MarbleZoneAct3 = 0x0202
SpringYardZoneAct1 = 0x0400
SpringYardZoneAct2 = 0x0401
SpringYardZoneAct3 = 0x0402
LabyrinthZoneAct1 = 0x0100
LabyrinthZoneAct2 = 0x0101
LabyrinthZoneAct3 = 0x0102
StarLightZoneAct1 = 0x0300
StarLightZoneAct2 = 0x0301
StarLightZoneAct3 = 0x0302
ScrapBrainZoneAct1 = 0x0500
ScrapBrainZoneAct2 = 0x0501
ScrapBrainZoneAct3 = 0x0103
FinalZone = 0x0502
EndGame = 0x0601

// Create an achievement for when the player transitions between levels
function ZoneComplete(zone, last, next)
{
    achievement(
        title = "Example 1B: " + zone,
        description = "Complete " + zone,
        points = 0,
        trigger = Active() && Transition(last, next)
    )
}

// Create all of the progression achievements
ZoneComplete("Green Hill Zone", GreenHillZoneAct3, MarbleZoneAct1)
ZoneComplete("Marble Zone", MarbleZoneAct3, SpringYardZoneAct1)
ZoneComplete("Spring Yard Zone", SpringYardZoneAct3, LabyrinthZoneAct1)
ZoneComplete("Labyrinth Zone", LabyrinthZoneAct3, StarLightZoneAct1)
ZoneComplete("Star Light Zone", StarLightZoneAct3, ScrapBrainZoneAct1)
ZoneComplete("Scrap Brain Zone", ScrapBrainZoneAct3, FinalZone)
ZoneComplete("Final Zone", FinalZone, EndGame)
```
### Example Translation
Like the previous example let’s dissect one of the achievement functions step by step until we get to the code used in RALibRetro.
```
ZoneComplete("Green Hill Zone", GreenHillZoneAct3, MarbleZoneAct1)
```
Being a function the compiler will jump to ZoneComplete() and use *zone* = "Green Hill Zone", *last* = GreenHillZoneAct3, and *next* = MarbleZoneAct1 for the parameter values.
```
achievement(
    title = "Example 1B: Green Hill Zone",
    description = "Complete Green Hill Zone",
    points = 0,
    trigger = Active() && Transition(GreenHillZoneAct3, MarbleZoneAct1)
)
```
Now let’s replace Active() and the Transition() functions with the parameters *last* = GreenHillZoneAct3 and *next* = MarbleZoneAct1.
```
achievement(
    title = "Example 1B: Green Hill Zone",
    description = "Complete Green Hill Zone",
    points = 0,
    trigger = LevelSelect == 0 &&
        DemoMode == 0 &&
        DebugMode == 0 &&
        prev(Level) == GreenHillZoneAct3 && 
        Level == MarbleZoneAct1
)
```
Finally the variables are replaced with the actual memory addresses and values.
```
achievement(
    title = "Example 1B: Green Hill Zone",
    description = "Complete Green Hill Zone",
    points = 0,
    trigger = byte(0xFFE1) == 0 &&
        byte(0xFFF0) == 0 &&
        byte(0xFFFB) == 0 &&
        prev(word(0xFE10)) == 0x0002 && 
        word(0xFE10)== 0x0200
)
```
Here’s how the achievement looks in RALibRetro.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/01_Memory/Example_1B.PNG" />
</p>

# Example 1C

## Example 1C - Collect Chaos Emeralds
The Chaos Emeralds are rare collection items and you need to collect all six to get the best ending.  You get an opportunity to collect a chaos emerald in each of the six special stages. To get to a special stage you need to complete a non-boss act with 50 or more rings. Doing so will make a giant warp ring appear at the end of the act which you can jump in to go to one of the special stages.

<p align="center">
  <img src="https://raw.githubusercontent.com/Etron-RA/RetroAchievements/main/Tutorials/01_Memory/Sonic_Emerald.png" />
</p>

### Homework 1
A)  Using the memory addresses provided in this example make a function that can generate achievements for collecting each chaos emerald.
B)  Using the same method as Example 1A and 1B dissect one of the achievement functions step by step until all the variables and functions are removed.

The following variables have been created to help with figuring out which emerald is in which special stage.
```
SpecialStageWhiteEmerald = 0
SpecialStageBlueEmerald = 1
SpecialStageYellowEmerald = 2
SpecialStagePurpleEmerald = 3
SpecialStageGreenEmerald = 4
SpecialStageRedEmerald = 5
```
[Tutorial #1 Solution](https://github.com/Etron-RA/RetroAchievements/blob/main/Tutorials/01_Memory/Solution/readme.md)

---

All RAScript Tutorials can be found [here](https://github.com/Etron-RA/RetroAchievements/tree/main/Tutorials).