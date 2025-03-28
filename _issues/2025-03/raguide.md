---
issue: 2025-03
order: 202503-30
layout: article
category: RAGuide
title: Dicing Knight.
author: BiPolarScientist
toc: true
---

<br>

| Game                                          | Console    | Genre     |
| --------------------------------------------- | ---------- | --------- |
| {% ragamepic 14599, 036542, Dicing Knight. %} | WonderSwan | Roguelike |

<p align="center">
  <img src="https://github.com/BiPolarScientist/sturdy-journey/raw/main/banner.png?raw=true"/>
</p>

***

# 1) Synopsis

|                                        |                                                                                             |
| :------------------------------------- | :------------------------------------------------------------------------------------------ |
| Minimum numbers of playthroughs needed | 11 (Expect more than this)                                                                  |
| Missable achievement                   | [Fafnir's Revenge (10)](https://retroachievements.org/achievement/124874) (See section 9.1) |
| Does difficulty affect achievements?   | Not applicable                                                                              |
| Hardest achievement                    | [A Race to the Finish (10)](https://retroachievements.org/achievement/124879)               |

# 2) Introduction

A difficult to learn due to the lack of hand holding but incredibly fun and action packed rogue-like dungeon crawler. When I picked this game up for Challenge League 2024 Knight node, it took me a while to figure out what I was doing. In order to make this game more accessible to start, I'm compiling all the information I could find about the game and some of my own strategies for easy access for people looking to try out the game.

I recommend reading through sections 3-5 and about the only missable achievement before your first play through, then section 6 after you defeat your first boss. Then treat the rest of the guide as a resource as needed.

# 3: Gameplay Loop

<img align="center" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/mainscreen.png?raw=true">

The main menu has six different boxes. The top left we have our actual menu. In the middle is the list of dungeons and your current high-scores. At the bottom from left to right is the number of lottery tickets you have available to spend, your level and currently equipped orbs, and the number of orbs you have left over. Lastly in the upper right are your badges for beating the 5 bosses of the game.

You will start the game with no scores, tickets, orbs, or badges. The main gameplay loop is

 1. Enter a dungeon
 2. Explore the dungeon and earn experience
 3. Kill the boss to earn a lottery ticket
 4. Spend the lottery ticket
 5. Equip orbs
 6. Repeat

To enter a dungeon, click start game to enter to the map screen, then select a dungeon to enter. Once in the dungeon, your goal is to kill enemies to find the floor key, unlock the exit to the next floor, and repeat until you reach the boss room. The boss room will always be after the exit on the last floor of the dungeon, this means if the dungeon is stated to have 3 floors, the boss with effectively be floor 4.

Here is what your screen will look like as your explore the dungeon.
<img align="center" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dungeonscreen.png?raw=true">

 1. Your item storage, maximum four items
 2. Your health bar
 3. The amount of special gauge you have built up for special attacks (this will have a maximum of one at the start of the game)
 4. This bar will fill up to give you more special gauge as you attack or block
 5. The amount of exp you've current earned on this run through
 6. Your food meter
 7. You!
 8. The floor counter
 9. The enemies

On each floor, there will be an enemy to kill that will drop the exit key which will unlock the exit door. The number of enemies needed to kill before the key will appear might increase as the dungeons progress in difficulty. Enemies will not respawn (except for immortal enemies and on rare occasions) unless you are holding the exit key. If you are holding the exit key every room will generate new enemies.

The two limiters you have are your hp bar and food meter. If you run out of hp, you'll die and be sent back to the main menu. If you run out of food, your hp will start rapidly draining. Luckily, enemies also drop food and healing items to sustain you. If you die, you can restart in the dungeon on the floor you died on by selecting continue on the dungeon select screen.

If there are no more enemies on screen, you can press start to pause the game and pull up the map. Note that you cannot pause on screens where there are enemies.

<img align="center" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/mapscreen.png?raw=true"> 

Here is the pause screen. The small grey square in the upper left corner is the exit door. Note that starting in dungeon two, you will only be able to see the map of rooms you have explored but the exit will be visible as long as it's on screen even if you haven't been in that room yet. There is no way to pan the screen around, you can only see about two rooms from yourself in any direction.

<img align="left" height="110" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/exitdoor.png?raw=true" style="display: block; margin: 20px;">This is what the exit door looks like in game while it's still locked. Use the floor key item on it to unlock it and proceed to the next floor. You'll be free to come back to this floor to pick up any items you've left behind.

Once you enter the boss room, another element of the UI will appear at the lower right of the screen. This is the bosses health bar and a 30 second timer. If you do not kill the boss in that time, they'll skip to the next phase, and if you're unable to kill the boss in the last phase, you'll be booted out to the main menu and are able to continue from the top floor again.

Once you've killed your first boss (or perhaps got lucky with a rare drop from a normal enemy) and picked up their lottery ticket, use the second option on the main menu to enter to lottery room. Walk up to the attendant there to automatically hand over a ticket, and your character will spin the wheel and an orb will pop out to the left. Make sure to pick it up.

You can then equip the orb using the third option on the main menu making you more powerful. Then enter a new dungeon and repeat until you're powerful enough to defeat all five bosses!

# 4) Controls and Combat
One of the things that makes this game special is the combat system. It's based on rolling dice for random number generation for your damage, damage done to you, and your healing. This means when you take an action, say hit an enemy with your sword or drink a healing potion, the effect doesn't take place right away. Upon the action dice will roll on the ground and then the damage or health will be applied. This means there's a small lag between actually hitting an enemy, and the damage being applied. This makes the best out of the box strategy to hit an enemy enough times that they will most likely die, then run away to safety while the damage calculations are being run. See bestiary section for more specific recommendations per enemy.

Joypad: Movement

Secondary Joypad (or shoulder buttons): Use Items

For the Beetle core on RALibretro, the bumpers will activate your left and right item slots, the right trigger is your top item, and the left trigger is your bottom item.

Start: Pause and access map (when no enemies on screen)

Select: Rotate Screen


## Knight
A: Sword Swing Attack (If you hit an enemy with your slash then click A again, the knight will dash forward slightly and swing again)

B: Shield (Can block both projectiles, and bounce physical enemies away from you)
Both swinging your sword and holding your shield out will drain your food bar.

Special moves:

A -> B - Shine slash - Press A then B is quick succession to activate this ultimate move that will use all your special gauge to unleash a single massive strike. This is your bread and butter for the more difficult enemies and for boss fights. Special meter can build up very quickly, so don't be afraid to be liberal with these as you explore.

B -> A - Blazing Edge - Will use one of your special gauge to do a small fire aoe around your character. Not very powerful or useful.

The main strategy for knight is block or dodge an enemies initial attack, then run and and swing as much as you can before their next attack. Attack frequency varies monster to monster, some you'll only be able to get one hit on safely. Use shine slash as needed on more difficult enemies and bosses. Practice only bringing out your shield right before you get hit, food management can make or break a run.

## Fortuner
A: Shoot a fire projectile in the direction you are facing.

B: Spends 1 special gauge to fire a projectile that blocks other projectiles and can hit enemies multiple times. 

Special moves:

A -> B - Absolute Field - Will pause time for less than a second, spends quite a lot of your food bar.

B -> A - Rosen Kruez - Acts like shine slash.

These are the special attacks as written in the guidebook, however, I've found that B -> A does nothing, and that A -> B freezes time, and very rarely activates Rosen Kruez.

Fortuner is this game's hard mode. You no longer have a shield to block bullets, so the game turns into more of a bullet hell than a hack and slash. To make things even more difficult, melee enemies will now have access to a fire bullet shot and ranged enemies will now fire much more frequently, as well as a few other specific changes noted in the bestiary. In return, items with timers will last much longer. Due to the special attacks seeming to not work very well, I recommend sticking to A and B attacks only. Food management is much more strenuous with this character as the food per shot drains much faster than the sword, so try to not overkill and waste shots by missing. Due to this food restriction I recommend treating the first two boss phases as pure bullet hells, and not even attempt to damage the boss to save your food meter to be able to spam shots in the third phase. You can also use her B attack to pin bosses against a wall for an easier target.

# 5) Items
Be careful about when you pick up items. If you pick something up the knight will hold it up link open a chest style, but the enemies around will still be able to attack you during this. Try to only pick stuff up if no one has seen you or everyone is dead.

Common Items:

| Picture                                                                                                                            | Name                 | Description                                                                                                                                   |
| ---------------------------------------------------------------------------------------------------------------------------------- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i1.png?raw=true"> | Healing Potion       | Rolls dice to determine how much you heal, make sure not to leave the screen while the dice are still rolling, or your potion will be wasted. |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i2.png?raw=true"> | Invincibility Potion | Turns you invincible for a short while. Will also give a tiny amount of food.                                                                 |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i3.png?raw=true"> | Clock                | Freezes time for a short while, you can still take damage during this by running into projectiles or enemies.                                 |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i4.png?raw=true"> | Lucky Rabbit         | For a short while all dice rolled with be 6's, best used right before a healing potion or a shine slash on a boss.                            |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i5.png?raw=true"> | Dice Foreseer        | Lets you know ahead of time what numbers will show up on a dice roll for a short while.                                                       |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i6.png?raw=true"> | Drill                | A three use drill that can break walls in the dungeon, useful to get around locked doors or make massive shortcuts.                           |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i7.png?raw=true"> | Map                  | Reveals the floor's map, only available starting dungeon two.                                                                                 |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i8.png?raw=true"> | Onigiri              | Moderately replenishs your food meter, note that these cannot be stored, you will eat it as soon as you pick it up.                           |

Rare Items:

| Picture                                                                                                                             | Name           | Description                                                                                                            |
| ----------------------------------------------------------------------------------------------------------------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------- |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i9.png?raw=true">  | Ultra Life     | Will heal you one whole health bar (40), will activate automatically if your hp hits zero.                             |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i10.png?raw=true"> | Super Drink    | Greatly restores your food meter.                                                                                      |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i11.png?raw=true"> | Exit Wing      | Teleports you to the next floor.                                                                                       |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i12.png?raw=true"> | Lottery Ticket | lucky find! You'll keep this even if you perish before the boss if you pick it up, will not take up an inventory slot. |


Special Items:

| Picture                                                                                                                             | Name      | Description                                                                                                                                                                                                                                                  |
| ----------------------------------------------------------------------------------------------------------------------------------- | --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i13.png?raw=true"> | Gate Key  | Unlocks a door blocking a hallway, one time use. Be careful, there's no way to discard this item unless you find a door to use it on. Doesn't drop from enemies, usually found sitting in dead end rooms. Will also increase your food bar, for some reason. |
| <img align="center" width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_i14.png?raw=true"> | Floor Key | Unlocks the exit door, and lights up the room in dungeons four onward.                                                                                                                                                                                       |



# 6) Orbs and Levels

Every lottery ticket you earn can be traded at the lottery in the main menu for an orb. These orbs are what will make it actually possible to finish the later dungeons as well as make earlier dungeons easier for you. 

 1. Bomb - not a real orb and cannot be equipped, if you receive a bomb it was a waste of a ticket. 
 2. Red - Special Attack Up - This orb will increase your special attack gauge maximum so you can use stronger shine slashes. You can equip up to 5 at one time for a max gauge of 6.
 3. Yellow - Defense Up - Reduces the number of damage dice rolled against you by one to a minimum of one. 
 4. Green - Regenerate - Gives you regeneration power. If you stand still for a while, your hunger meter will start to drain and your hp will fill back up. The more equipped, the more hp you get per food. I've found this better for longer dungeons.
 5. Blue - Item Rate Up - Increases item drop rates from enemies, seems to only affect drop rate, not drop rarity. 
 6. Purple - Food Gauge Up - Affects your food gauge in some way, either making it bigger or having onigiri heal more? Needs more testing, but according to the guidebook that "even the author thinks it's unnecessary." 
 7. Black - Experience Up - Increases exp earned in the dungeons. Great to rerun old dungeons to increase your level. Mostly for high score grinding.
 8. White - Hit Points Up - Each orb equipped will give you an additional health bar like the bosses and will increase the number of dice rolled per health potion from 6 to 10 if you have at least one white orb. Further orbs have no affect on dice. The first health bar is red, then yellow, then blue, and then it will simply tell you your health stat, each bar is 40 hit points.

Your level dictates how many orbs you can equip at once. For each level earned you gain an additional orb slot. Your experience gained is the sum of your high-scores on each of the dungeons. This means if you have a high-score of 1200 on Lindwürm and you do another run and only get 800, you will have gained 0 experience. However if you scored 1500, you will have gained 300 experience. 
Here are the experience values required for each level, level 9 will likely require you to have a run in the sixth dungeon after the final boss.

|       |     |      |      |      |      |       |       |       |       |
| ----- | --- | ---- | ---- | ---- | ---- | ----- | ----- | ----- | ----- |
| Level | 1   | 2    | 3    | 4    | 5    | 6     | 7     | 8     | 9     |
| Exp   | 500 | 1000 | 2000 | 4000 | 8000 | 12000 | 16000 | 20000 | 30000 |

My best guess for how exp is given is you get 5 exp for every health point from a monster you've killed, 90+20g for the g<sup>th</sup> gate you've opened, and 240+20f for opening the door on the f<sup>th</sup> floor. This means if you haven't died the formula for your total exp is

> 5∑ Healthofenemiesyou′vekilled + 10g<sup>2</sup> + 80g + 20f<sup>2</sup> + 220f + Bossbonusesperphasebeaten

# 7) Bestiary

Search style refers to how enemies will notice you are in the room. Before they notice you they will not attack, and so you might have the possibility to sneak up on them to get a free hit.

 - Hearing - will aggro when you get close enough to the enemy, sneak attack not possible
 - Vision (Narrow) - will only notice you if you are within a small cone in front of them
 - Vision (Wide) - will only notice you if you are within a large cone in front of them
 - Contact - will only attack if you touch, shield bash, or attack them

|                                                        Image                                                         | Manual Name               | Guide Name    |  HP   | Notes                                                                                                                                                                                                                                                     | Search Style    |
| :------------------------------------------------------------------------------------------------------------------: | ------------------------- | ------------- | :---: | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e1.GIF?raw=true">  | Gerle Pepox · Gondar Nox  | Blue Slime    |   1   | Weak. <sup>2</sup>                                                                                                                                                                                                                                        | Hearing         |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e2.GIF?raw=true">  | Bemmepapox · Gondar Nexus | Red Slime     |   6   | Weak. <sup>2</sup>                                                                                                                                                                                                                                        | Hearing         |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e3.GIF?raw=true">  | Armor Knight              | Knight        |  10   |                                                                                                                                                                                                                                                           | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e4.GIF?raw=true">  | Sculgon                   | Skeleton      |  10   | Immortal, will not drop items and will respawn upon re-entry of room.                                                                                                                                                                                     | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e5.GIF?raw=true">  | Floating killer EX        | Mine          |   1   | These mines can be killed if time is frozen, or if you use shine slash from far enough away, and they CAN drop the exit key. If there are no enemies left, start hunting these down. Fortuner: they will also spin and send out spirals of fire to dodge. | Hearing         |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e6.GIF?raw=true">  | Missile Beamer            | Beam Robot    |   7   |                                                                                                                                                                                                                                                           | Vision (Wide)   |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e7.GIF?raw=true">  | Mario Dot Net             | Fire Robot    |   6   |                                                                                                                                                                                                                                                           | Vision (Wide)   |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e8.GIF?raw=true">  | Witch Witch               | Witch         |   4   | After the first dungeon, the witches change attack styles to dropping exploding meteors.                                                                                                                                                                  | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e9.GIF?raw=true">  | Galapagos                 | Penguin       |   4   |                                                                                                                                                                                                                                                           | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e10.GIF?raw=true"> | Cube                      | Cube          |   1   |                                                                                                                                                                                                                                                           | Hearing         |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e11.GIF?raw=true"> | Mad Potion                | Potion        |   1   |                                                                                                                                                                                                                                                           | Contact         |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e12.GIF?raw=true"> | Nukoko ★ Showtime         | Imp           |   4   |                                                                                                                                                                                                                                                           | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e13.GIF?raw=true"> | Joker                     | Joker         |   7   |                                                                                                                                                                                                                                                           | Vision (Wide)   |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e14.GIF?raw=true"> | Heartbeat                 | Succubus      |   4   | Dangerous.<sup>3</sup>                                                                                                                                                                                                                                    | Vision (Wide)   |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e15.GIF?raw=true"> | Kunochi                   | Kunochi       |   4   |                                                                                                                                                                                                                                                           | Hearing         |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e16.GIF?raw=true"> | Meidou                    | Gun Maid      |   6   |                                                                                                                                                                                                                                                           | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e17.GIF?raw=true"> | Spamaidu                  | Sword Maid    |   7   |                                                                                                                                                                                                                                                           | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e18.GIF?raw=true"> | Yang Yang                 | Fairy         |   6   | Dangerous.<sup>3</sup>                                                                                                                                                                                                                                    | Hearing         |
| <img width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e20.GIF?raw=true"> | Karakuri Cannon           | Fire Mech     |  10   | Dangerous.<sup>3</sup>                                                                                                                                                                                                                                    | Vision (Narrow) |
| <img width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e21.GIF?raw=true"> | Karakuri Epson            | Beam Mech     |   7   |                                                                                                                                                                                                                                                           | Vision (Narrow) |
| <img width="64" height="64" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e22.GIF?raw=true"> | Karakuri Xerox            | Punching Mech |  10   | Weak. <sup>2</sup>                                                                                                                                                                                                                                        | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e23.GIF?raw=true"> | Charlenite                | Swordman      |   7   |                                                                                                                                                                                                                                                           | Vision (Wide)   |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e24.GIF?raw=true"> | Hikaru Knight             | Swordwoman    |   7   |                                                                                                                                                                                                                                                           | Vision (Wide)   |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e19.GIF?raw=true"> | Chiffron                  | Librarian     |   3   | Teleports<sup>1</sup>.                                                                                                                                                                                                                                    | Vision (Wide)   |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e25.GIF?raw=true"> | Nectar                    | Magic Circle  |   5   | Teleports<sup>1</sup>. Dangerous.<sup>3</sup>                                                                                                                                                                                                             | Vision (Narrow) |
| <img width="32" height="32" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_e26.GIF?raw=true"> | Moonlay                   | Light Mage    |   3   | Teleports<sup>1</sup>. Dangerous.<sup>3</sup>                                                                                                                                                                                                             | Vision (Narrow) |

|                                                                                                                       |                                                                                                                       |                                                                                                                       |                                                                                                                       |                                                                                                                       |
| :-------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------: |
|                                                   Fafnir the White                                                    |                                                   Samsara Fire God                                                    |                                                    Leocadia's Toys                                                    |                                                  Forbidden Honehora                                                   |                                               Ellis (Lottery Attendant)                                               |
| <img width="200" height="128" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_b1.png?raw=true"> | <img width="128" height="128" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_b2.png?raw=true"> | <img width="128" height="160" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_b3.png?raw=true"> | <img width="128" height="128" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_b4.png?raw=true"> | <img width="128" height="128" src="https://github.com/BiPolarScientist/sturdy-journey/blob/main/dkp_b5.png?raw=true"> |


<sup>1</sup> Enemy will teleport after every hit from your weapon or shield, sometimes they can teleport directly on top of you or behind you and get a hit off before you can do anything. I recommend using special attacks on these enemies to kill them quickly because of this, especially the last two. Damage on these enemies seem capped at 1 damage per dice, unless using a lucky rabbit.

<sup>2</sup> Can only ever do one damage worth of dice via touch, has no special attack.

<sup>3</sup> Personally, had done the most damage to me over my many runs, beware and special attack preemptively.


# 8) Dungeon Guides
##  LINDWÜRM

|                |                  |
| -------------- | ---------------- |
| Floors         | 3                |
| Boss           | Fafnir the White |
| Yellow Orb Max | 0                |
| Blue Orb Max   | 1                |

The introduction dungeon.

### Potential enemies

| Floor | Enemies                                             |
| ----- | --------------------------------------------------- |
| 1     | Blue Slime, Red Slime, Armor Knight, Witch          |
| 2     | Blue Slime, Red Slime, Armor Knight, Witch, Penguin |
| 3     | Red Slime, Armor Knight, Witch, Joker               |


### Boss Patterns:

**Phase 1:** 
> Three large boulders will drop from the sky above where your character currently is one at a time, and when they land they will explode into a circle of fire projectiles. Then the boss will hop down and shoot several fire projectiles at you before jumping away. Repeats.


**Phase 2:** 
> They will land in the rooms and slowly move around shooting volleys of two fire projectiles at you.

**Phase 3:** 
> They'll stay more stationary and alternate between sending a long stream of fire at you, and a more demure fire attack. Repeats.

> Shield the long stream to build gauge, shine slash during the other attack.


## SHOOTINGSTAR

|                |                  |
| -------------- | ---------------- |
| Floors         | 4                |
| Boss           | Samsara Fire God |
| Yellow Orb Max | 1                |
| Blue Orb Max   | 2                |

This dungeon adds fog of war, you no longer have access to the full map unless you find and use a map item. Locked doors and keys will also be added to the generation. Both of these will be true for every future dungeon as well.

### Potential enemies

| Floor | Enemies                                               |
| ----- | ----------------------------------------------------- |
| 1     | Blue Slime, Red Slime, Skeleton, Cube, _**Succubus**_ |
| 2     | Armor Knight, Fire Robot, Joker, _**Kunoichi**_       |
| 3     | Red Slime, Armor Knight, Mine, Potion, _**Fairy**_    |
| 4     | Mine, Cube, Joker, _**Succubus**_, _**Magic Circle**_ |


### Boss Patterns:
**Phase 1:** 
> They will float above you for a while and then slam down while firing fire projectiles as normal and like the joker.


**Phase 2:** 
> They will slide around the ground in short bursts while firing fire projectiles.


**Phase 3:** 
> They will transform into a snake, rapidly slithering around the room while firing more projectiles. 

## JABBERWOCK

|                |                 |
| -------------- | --------------- |
| Floors         | 5               |
| Boss           | Leocadia's Toys |
| Yellow Orb Max | 2               |
| Blue Orb Max   | 3               |

### Potential enemies

| Floor | Enemies                                                   |
| ----- | --------------------------------------------------------- |
| 1     | Mine, Beam Robot, Fire Robot, Cube, Gun Maid              |
| 2     | Gun Maid, Sword Maid                                      |
| 3     | Mine, Beam Robot, _**Fire Mech**_, Beam Mech              |
| 4     | Imp, Gun Maid, Swordswoman                                |
| 5     | Mine, Gun Maid, Beam Mech, _**Fire Mech**_, Punching Mech |

### Boss Patterns:

**Phase 1:** 
> Will jump up and down trying to land on the player. On landing a circle of fire will burst out.


**Phase 2:** 
> Will slide around in short but intense bursts, with each slide he emits a heavy wave of fire toward the character and another circle of fire outward.


**Phase 3:** 
> A bit of a combination of the first two phases. They'll slide around briefly before hopping. On landing they will fire a black hole projectile towards you. It's a large slow moving orb that will suck in fire around it, but won't suck in the character. They will also fire several circles of fire.

> Shine slash while they are landing, dodge the black hole and absorb as much fire into your shield as possible.

## QUETZALCOATL

|                |                    |
| -------------- | ------------------ |
| Floors         | 6                  |
| Boss           | Forbidden Honehora |
| Yellow Orb Max | 3                  |
| Blue Orb Max   | 4                  |

This map increases the fog, you'll now only have a small circle to light to see, until you carry the floor key. This is true for later dungeons as well.

### Potential enemies

| Floor | Enemies                                                             |
| ----- | ------------------------------------------------------------------- |
| 1     | Blue Slime, Red Slime, Skeleton, _**Kunoichi**_, _**Succubus**_     |
| 2     | Skeleton, Mine, _**Kunoichi**_, Librarian, _**Magic Circle**_       |
| 3     | Skeleton, Mine, Potion, _**Fairy**_, Swordsman                      |
| 4     | Armor Knight, Skeleton, Joker, Swordswoman, _**Magic Circle**_      |
| 5     | Witch, Potion, _**Kunoichi**_, _**Succubus**_, Fire Robot           |
| 6     | Armor Knight, Gun Maid, Sword Maid, Swordswoman, _**Magic Circle**_ |


### Boss Patterns:
**Phase 1:**

> The boss will stay stationary at the top of the screen and send out waves of bullets to dodge. This phase is the most classic version of a bullet hell.

**Phase 2:**

> The boss will transform into a snake and start slithering around, firing off circles of fire and using the joker's fire attack pattern.

**Phase 3:**

>The boss will still slither around but transition to a spinning pinwheel of fire and using the succubus' attack pattern.

## JÖRMUNGANDR

|                |       |
| -------------- | ----- |
| Floors         | 12    |
| Boss           | Ellis |
| Yellow Orb Max | 4     |
| Blue Orb Max   | 5     |

This dungeon is quite a lot longer than the previous. This is where I would start recommending use of at least one green orb while exploring, preferably two if going for a no continue run.

### Potential enemies

| Floor | Enemies                                                          |
| ----- | ---------------------------------------------------------------- |
| 1     | Blue Slime, Red Slime, Armor Knight, Skeleton, Mine              |
| 2     | Beam Robot, Fire Robot, Witch, Penguin, Cube                     |
| 3     | Imp, Joker, Succubus, Kunoichi, Librarian                        |
| 4     | Potion, Gun Maid, Fairy, _**Fire Mech**_, Beam Mech              |
| 5     | Mine, Gun Maid, Fairy, Librarian, _**Light Mage**_               |
| 6     | Mine, _**Fire Mech**_, Beam Mech, Punching Mech                  |
| 7     | Armor Knight, Swordswoman, Swordsman, Librarian                  |
| 8     | Red Slime, Skeleton, Potion, Fairy, _**Magic Circle**_           |
| 9     | Red Slime, Imp, _**Fire Mech**_, Beam Mech, Punching Mech        |
| 10    | Skeleton, Joker, Fire Robot, Beam Robot, Librarian               |
| 11    | Armor Knight, Skeleton, Swordswoman, Swordsman, _**Light Mage**_ |
| 12    | Armor Knight, Swordswoman, _**Magic Circle**_, _**Light Mage**_  |

### Boss Patterns:
**Phase 1:**

>The first phase is an add phase. Cube enemies will spawn in a hydra pattern, kill one and several more will appear. Kill enough of them to move onto the next phase. Note that you will gain exp for each cube killed in this phase, leading to a very high exp count if you are able to make it through the dungeon without dying. Also, overkill on this phase is very weak, as overkill dice will not be applied to the bosses health bar, as each cube can only take so much damage.

>Shine slash city, spam it as much as you can in cube dense areas and hold out your shield to block the ever increasing amount of beams coming your way. Or, if score and the speedrun achievement isn't your goal, just hang out with the two starting cubes until the 30 seconds are over.

**Phase 2:**

>Ellis will descend from the air with two cube henchmen and circle widely around the room, leaving behind a trail of fire attacks. 

>Shine slash, then run around and gather up more gauge on the fire shots.

**Phase 3:**

>Ellis will send away her cube guards and attack you directly. She will mimic your shine slash and send a multitude of projectiles while the screen flashes and dims down. This phase is chaotic and difficult to follow.

>In between the boss's shine slashes, utilize your own special attacks. While waiting for a chance to shine slash hold out your shield to block as much damage as you can.

After you gather your lotto ticket, you will have to slash the newly revived Ellis with your sword to end the game.

## UROBOROS

|                |      |
| -------------- | ---- |
| Floors         | ∞    |
| Boss           | None |
| Yellow Orb Max | 5    |
| Blue Orb Max   | 6    |

Unlocked at the end of the game, go for a high score! I believe the leaderboards will only submit after you die and continue back into the dungeon.

# 9) Achievements
The achievements in this set can be split into 5 categories: missable, knight play-through, fortuner play-through, creative item use, and challenge runs. Note that the only section that allows for the warp glitch is the creative item use section.
## 1. Missable

| {% raachpic 124874, 137107, Fafnir's Revenge (10) %} | Win your first ticket defeating Fafnir, "Blow" it on the Lottery, and win your second ticket defeating Samsara (No orbs, No warp glitch, New save only) |

The only missable achievement asks you to complete the first two dungeons back to back with the extra RNG needed to get a bomb from your first ticket. Instead of focusing on not missing this achievement, I recommend you skip over it, and earn it later on a fresh save after getting more used to the controls and dungeon crawling. When you decide to go for it make sure to not pick up any rare lottery ticket drops from non-boss enemies, as the second ticket you pick up must be from Samsara.

When you decided to attempt this one, note that the hardest enemies to deal with will be the magic circle enemies on floor 4 of Shootingstar. It might be best to avoid these and attempt to get the floor key from another enemy and sprint through to the exit. This may take you a lot of retries, however on each save restart you only need to complete the first dungeon, which can go relatively quick.

## 2.  Knight Play-through
This section covers 6 achievements and acts as the progression for the set, the first five are simply beating each of the main five dungeons with the knight. Continuing through a dungeon after you've died is allowed, but if you shut the game down and reopen it you must select new map. The last achievement is entering the secret sixth dungeon which unlocks after beating the game. 

If having trouble, as long as you kill one new enemy every entry into the dungeon, you are making progress. Feel free to die whenever you feel like to change orb load outs on the main screen as well, if you have a different set you'd like to use for a boss vs. exploring for instance.

| Achievement                                                                   | Description                                                                                                           |
| ----------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| {% raachpic 124895, 137151, Who Needs Guns When a Sword Does Just Fine (5) %} | Defeat Fafnir of Lindwurm and retrieve their lottery ticket (Knight, No warp glitch, New Map on load)                 |
| {% raachpic 124896, 137152, Shell Cracker (5) %}                              | Defeat Samsara Fire God of Shootingstar and retrieve their lottery ticket (Knight, No warp glitch, New Map on load)   |
| {% raachpic 124897, 137154, It's Mecha-Godjira!!! (10) %}                     | Defeat Leocadia's Toys of Jabberwock and retrieve their lottery ticket (Knight, No warp glitch, New Map on load)      |
| {% raachpic 124898, 137155, Wrecking Ball (10) %}                             | Defeat Forbidden Honahora of Quetzalcoatl and retrieve their lottery ticket (Knight, No warp glitch, New Map on load) |
| {% raachpic 124899, 137157, Oh Ellis, I Knew Thee Well (25) %}                | Defeat Ellis of Jormungandr and retrieve their lottery ticket (Knight, No warp glitch, New Map on load)               |
| {% raachpic 124881, 137132, Entering the Belly of the Beast (1) %}            | Enter Uroborus the first time                                                                                         |

## 3. Fortuner Play-through
This section covers 5 achievements, finishing each of the 5 main dungeons with the Fortuner, the unlockable character considered hard mode after beating the game with the knight. Beating these dungeons again will change your silver stars to gold on the main screen.

| Achievement                                             | Description                                                                                                             |
| ------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| {% raachpic 124882, 137126, American Woman (10) %}      | Defeat Fafnir of Lindwurm and retrieve their lottery ticket (Fortuner, No warp glitch, New Map on load)                 |
| {% raachpic 124883, 137127, Shining in the Dark (10) %} | Defeat Samsara Fire God of Shootingstar and retrieve their lottery ticket (Fortuner, No warp glitch, New Map on load)   |
| {% raachpic 124884, 137129, Kaiju Queen (25) %}         | Defeat Leocadia's Toys of Jabberwock and retrieve their lottery ticket (Fortuner, No warp glitch, New Map on load)      |
| {% raachpic 124885, 137130, Oklahoma Jane (25) %}       | Defeat Forbidden Honahora of Quetzalcoatl and retrieve their lottery ticket (Fortuner, No warp glitch, New Map on load) |
| {% raachpic 124886, 137131, Gunslinger (25) %}          | Defeat Ellis of Jormungandr and retrieve their lottery ticket (Fortuner, No warp glitch, New Map on load)               |


## 4. Creative Item Use
This section is the for the four miscellaneous achievements, mostly to do with using items in dungeons. These can be done at any time, but will be easiest to unlock after having a small bank of blue orbs at your disposal. Note that these achievements allow for the use of the warp glitch.

| {% raachpic 124868, 137114, A Stunning Defeat (Knight) (2) %} | Shield Bash any non-boss enemy after delivering a Killing Blow but before the dice has rolled. |

This is the easiest achievement which you will probably unlock on accident playing the game normally. The easiest way to unlock will be in the first dungeon, find an enemy with only 1 hit point (the blue slimes will do), slap one with your sword and then pull your shield out and run into them before the dice finishes rolling.

Useful orbs: N/A

    
| {% raachpic 124870, 137121, Time is on Your Side (3) %} | Kill 3 non-boss enemies without using any Special Attacks while time is frozen. |

Find a room with 3 low hit point enemies, pop a time freeze with the clock item, and wail on them. Knowing how much health enemies have will be helpful here, as overkill will be your downfall. Since there is a delay between when you make contact with your sword and the damage being done, you want to make sure to only hit each enemy enough times that the dice rolling will be most likely to kill them.

You can weaken higher hit point enemies before freezing time if you can't find a suitable room. 

Useful orbs: Blue for higher items drop rates to find clocks

    
| {% raachpic 124871, 137118, Let 'm Roll (4) %} | Roll at least 50 Dice on a single floor of any dungeon without letting the Dice Foresee buff expire. |

This is a test of how many dice can you roll in a short amount of time. The easiest way to build up a lot of dice quickly is to have the dice item, and as many health potions as you can. Pop the dice buff, then drink all your potions and spam as many shine slashes (A -> B special attack) on enemies as you can.

Useful orbs: White for more dice rolls per potion, Blue for higher item drop rates for potions and dice foreseers, Red for more special attack gauge

    
| {% raachpic 124872, 137124, Minesweeper (3) %} | Kill 5 Mines in any dungeon before they explode |

Mines start appearing in the second dungeon. While you can kill them, they tend to explode before you can get close enough to slash them. Either shine slash them from far enough away, or find several clock items and freeze time to kill them. Leave the room until they respawn (if you've found the exit key) or find a new room with several and repeat.

Useful orbs: Blue for higher item drop rates for clocks

## 5. Challenge Runs
Here is where the five more challenging achievements live. Each have to do with either running a dungeon or beating a boss with an extra disadvantage. They are in dungeon unlock order.

| {% raachpic 124875, 137119, Cowabunga!!! (10) %} | Defeat Samsara in Shootingstar using at least 1 red, 1 blue, 1 purple, and 1 yellow orb (No warp glitch, New Map on load) |

The main difficulty here is RNG, unlocking one of each of the required orbs, and then being at least level four. Once you have that this should be easier than your first run through the dungeon.

    
| {% raachpic 124876, 137120, Big, Black and Not Full of Fun (10) %} | Defeat Leocadia's Toys in Jabberwock without being hit by any of his black holes (No warp glitch, New Map on load) |

Leocadia's Toys will start using black holes on the third phase of the fight (the red health bar). They are massive slow moving projectiles. He will jump, land, then shoot at you. After he fires, run around the black hole and be prepared to shine slash when he lands. Remember to block the fire projectiles with your shield to build up your meter. Other than that basic boss strategy still applies.

    
| {% raachpic 124877, 137123, A Glutton for Punishment (25) %} | Defeat Leocadia's Toys of Jabberwock without picking up any additional health potions the entire run (No warp glitch, New Map on load) |

Study up on what enemies appear on what floors of Jabberwock and practice fighting them without taking damage. If you get lucky and find an exit wing, know which floor houses your worst opponent type and skip that floor. I don't recommend attempting this challenge until you have at least 2 green orbs for another method of healing that won't drain your food too badly.

Useful orbs: Green for healing with food supply, Yellow for damage reduction
    
| {% raachpic 124878, 137122, Crawling in the Dark (10) %} | Defeat Forbidden Honahora of Quetzalcoatl without picking up or using a Floor Map the entire run (No warp glitch, New Map on load) |

Even if you don't use maps, if you get close enough to the exit you will be able to see where it is in the darkness of your empty map. Make your way in that direction and hope for good luck. While it seems possible on a first run through of the area, leaving it for later when you have a higher level and more orbs can be beneficial, as you'll be spending more time lost looking for the exit than normal.

    
| {% raachpic 124879, 137125, A Race to the Finish (10) %} | Defeat Ellis of Jormungandr within 45 seconds from starting the fight (No warp glitch, New Map on load) |

The worst part of this achievement is needing to go through all 12 floors of the dungeon just to get an attempt at this. If you are in the boss and know you aren't going to make it, die and restart from the top floor. Hopefully you can find more rabbit items before a second attempt. You are only given 90 seconds total to beat any boss, so you'll have to be twice as efficient. Look up a video of this boss fight (you can find several by looking up game speedruns) and study the patterns. General strategy:

 1. Block as many shots as possible to fill up your special gauge while not attacking.
 2. Equip as many red orbs as possible while still making it through the dungeon for extra shine slash damage rolls.
 3. Bring in as many lucky rabbits to the boss room as possible for guaranteed high rolls on the second two phases, the first phase has a cap on the amount of damage you can do per cube, so save them unless you have three.
 4. Practice the fight a few times using the warp glitch before doing full dungeon runs.

Phase one will take you the longest due to the damage cap, aim for 20 seconds on that phase and 25 for the last two.


# 10: Known Glitches

## Warp Glitch
Start on the top floor of any dungeon! This isn't valid for most achievements, but is a great way to get lottery tickets fast and to practice bosses.

 1. Enter the dungeon you want to warp into and then leave.
 2. Go to the map screen.
 3. Select the same dungeon.
 4. Move the cursor to New Level.
 5. Move the cursor back to Continue.
 6. Hit B twice to get back to the main menu.
 7. Hit start game and Continue into the dungeon.

You should then be on the top floor!

## No Exit Key
One the final dungeon I've found that rarely sometimes after killing all the enemies (including killing, not exploding, the mines) that no key has dropped. I have not found a way to fix this other than resetting. 

## Exit Boss Room
In certain bosses, I achieved this in dungeon three, if you get the bosses hit box to clip you into the bottom center wall, it will put you through a loading zone to the prior floor while the boss music still plays. The exit and entrance will be gone and there will be no items or enemies. Try to avoid sitting in the middle bottom of the fight arena if the boss is sliding around and might force you out of bounds.

## New Dungeon Generation
Sometime even after generating a new dungeon, one of the floors will be a floor you've already explored, with enemies killed, items on the floor, and the exit already open. 

# Credits
Guide by {% rauser BiPolarScientist %}

Set by {% rauser theanxietybuster %}

Information from [Translated Game Guide](https://sites.google.com/site/hackerb9/dicing-knight/dicing-knight-manual) roughly translated by hackerb9

Watching the current six speedruns of this game were very helpful in figuring out how the game worked, thank you to the players, with a special thanks to Trysdyn for writing out how to utilize the warp glitch in the speedrun forums

Shoutouts to {% rauser Annonith %} for the being the first one to master it.

