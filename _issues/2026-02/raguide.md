---
issue: 2026-02
order: 202602-30
layout: article
category: RAGuide
title: "Super Robot Taisen"
author: Yanbetari
---

<br>

| Game                                             | Console  | Genre        |
| ------------------------------------------------ | -------- | ------------ |
| {% ragamepic 7262, 094781, Super Robot Taisen %} | Game Boy | Tactical RPG |

<!-- <p align="center">
  <img src=""/>
</p> -->

---

# 1) Synopsis

|                                        |          |
| :------------------------------------- | :------- |
| Set Difficulty                         | 4/10     |
| Approximate time to master             | 15 hours |
| Minimum numbers of playthroughs needed | 1        |
| Number of missable achievements        | 40       |

# 2) Introduction

Super Robot Wars (a.k.a. Super Robot Taisen) is a long running strategy RPG series about having the heroes of various mecha shows team up to save the world from several disasters and all of their collective villains at once.

Super Robot Wars on the Game Boy is their first attempt. While you can certainly see the bones of what would become the series, it still very much has a "rough draft" vibe. Several core mechanics are either missing or woefully incomplete. Still, it's interesting to see where things began.

# 3) Mechanical Notes

Damage calculations use the following formula:
> `((Attack Power + Weapon Power [Will]) * Terrain Compatibility * Terrain Defense) - Target Defense`

Terrain Compatibility is set 100%, 80%, or 60% for each of Land, Sea, and Air targeting. The values are set for each weapon individually, but there are certain patterns. (e.g. Beam weapons tend to be poor in water.)
* Land is used for Land or Sea movement type units on most terrain types.
* Sea is used for Land or Sea movement type units on water spaces for outdoor maps, or column spaces for indoor maps.
* Air is used for any Air movement type units, regardless of terrain.

Terrain Defense is:
* 1 (no reduction) for any Air movement type units.
* 1 (no reduction) on plains and water spaces for outdoor maps, or brick floor and column spaces for indoor maps.
* 0.95 (5% reduction) on forest and mountain spaces for outdoor maps, or tiled floor and broken floor spaces for indoor maps
* 0.9 (10% reduction) on tower and base spaces
Final damage values always round down, so any Terrain Defense is always worth at least 1 less damage.

## Spirit Commands

Spirit Commands are exclusive to your leader unit.  When you select Spirit, spend 1 SP and be given three options to choose from. Cancelling out of this selection wastes the SP, and re-rolling the options will cost another. Your maximum SP increases as your leader levels up, and refills to maximum at the start of each Episode.

* **Hot Blood** - Your leader will deal 1.25x damage on the next 1-4 attacks.
  * Re-casting Hot Blood will overwrite your prior value, wasting any unused attacks.
  * The damage is multiplied before applying enemy defense, so you'll get more than 25% extra net damage.
* **Flash** - Your leader will automatically dodge the next 1-4 attacks targeting it.
  * Re-casting Flash will overwrite your prior value, wasting any unused dodges.
* **Guts** - Your leader's HP is restored to maximum.
* **Friends** - All allied units are healed for 10-20 HP.
* **Love** - One destroyed allied unit is revived to full HP.
  * The revived unit is placed adjacent to your leader.
  * Love cannot be cast if you have no destroyed allied units.
* **Justice** - All allied units gain 5-25 Loyalty, up to your leader's Charisma.
  * If a unit already has more Loyalty than your leader's Charisma, their Loyalty will be _reduced_ to that value.
* **Heart** - Your next Enlist attempt is guaranteed to succeed.
  * Heart can only be cast if your leader is adjacent to an enemy unit.
  * You will automatically be set to target an Enlist after casting Heart, but you can cancel out and preserve the effect to allow your leader to move or another unit to Enlist an enemy.
  * Heart has no effect on Loyalty 0 enemies.
* **Train** - The selected allied unit gains a permanent +1 to a random stat. (Attack, Defense, Speed, or Charisma)


# 4) Main Walkthrough

[**Episode 1 - Fly! Super Robots!**](#episode1)

![Map1](https://github.com/RetroAchievements/guides/assets/167945285/bc965378-813e-4382-a917-c1e74c81a3d5)

| Items               | Enemies                                                         |
| :------------------ | :-------------------------------------------------------------- |
| 1. Chobam Armor     | 1. Z'Gok x 2 [Ranged]                                           |
| 2. Magnet Coat      | 2. Zaku x 4                                                     |
| 3. Rocket Punch     | 3. Zuu                                                          |
| 4. Heart of Justice | 4. Getter Q / Dom                                               |
| 5. Heart of Justice | 5. Diana A [Ranged, Stationary] / Zssa [Ranged, Stationary]     |
| 6. Biosensor        | 6. Aphrodite A [Ranged, Stationary] / Zssa [Ranged, Stationary] |
| 7. Chobam Armor     | 7. Garada K7 [Ranged, Stationary]                               |

![](https://media.retroachievements.org/Badge/473475.png) [Episode 1 – Fly! Super Robots! (5)](https://retroachievements.org/achievement/417427)   
_Defeat Garada K7 and capture the enemy base_

As the first map, this one's not too difficult, and gives you a good introduction to the general flow of battle. Most of the enemies are aggressive and will immediately charge forward, while the boss and their bodyguards won't move from their starting tiles. This breaks most maps into two phases: set up somewhere defensible to weather the enemy attack, and then prepare to crack the enemy defenses around the base. 

While the enemies here are all higher level than your starting team, they're generally weak base units. The tower in the central plain is the natural forward position, as towers reduce incoming damage and provide healing each turn. 

The boss and bodyguards aren't much stronger. Since they're all range 4 and are spread out diagonally, you can use your own ranged units to fight the bodyguards one at a time, though that means giving up the first attack.

***

![](https://media.retroachievements.org/Badge/473477.png) [Flying Scavenger (5)](https://retroachievements.org/achievement/417440)   
_Find all 7 items in Episode 1_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473476.png) [Supersonic Flight (5)](https://retroachievements.org/achievement/417452)   
_On Episode 1, clear the map before the end of turn 12_

Since the game starts at turn 0, you've got 13 turns to cover the whole map. Your basic strategy won't need to change much, but you'll need to be efficient in dealing with initial enemies, and you may not have have the spare time to heal fully before advancing. Remember that you need to move a unit onto the base to end the mission, so you can't rely on Garada K7 dying to a counterattack.

***

## Notable Recruits

* If you didn't start with the Mazinger team, Aphrodite A and Diana A will be the boss bodyguards. You'll want to recruit one of them to upgrade for the [Battlefield Goddess](https://retroachievements.org/achievement/417470) achievement.
* If you didn't start with the Getter team, Getter Q will be available to recruit. It can be upgraded for the [Way Too Much High Power Man](https://retroachievements.org/achievement/417471) achievement. However, it's treated as a Generic Enemy for recruitment rather than a Super Robot. Texas Mack also works for this achievement and will be available to recruit later.

***

[**Episode 2 – Lakeside Battle**](#episode2)

![Map2](https://github.com/RetroAchievements/guides/assets/167945285/93b55792-a62c-4d62-9495-88aa3f9eb447)

| Items               | Enemies                                                       |
| :------------------ | :------------------------------------------------------------ |
| 1. Heart of Justice | 1. Z'Gok [Ranged]                                             |
| 2. Homing Missile   | 2. Capule                                                     |
| 3. Biosensor        | 3. Texas Mack [Tower] / Bood [Tower]                          |
| 4. Mega Bazooka     | 4. Zaku x 4                                                   |
| 5. Super Alloy-Z    | 5. Gundam / Bawoo                                             |
| 6. Chobam Armor     | 6. Guncannon [Ranged, Stationary] / Zssa [Ranged, Stationary] |
| 7. Photon Missile   | 7. Doublas M2 [Ranged, Stationary]                            |
| 8. Super Alloy-Z    | 8. Elmeth [Ranged, Stationary]                                |

![](https://media.retroachievements.org/Badge/473478.png) [Episode 2 – Lakeside Battle (5)](https://retroachievements.org/achievement/417428)   
_Defeat Elmeth and capture the enemy base_

This map serves as an introduction to a new enemy AI: enemies which will prioritize towers. These tend to occupy an enemy tower, and wait there until you leave a captured tower open for them to reclaim.

It's also got much rougher terrain than the first map, so your land units will be slowed down considerably. However, this cuts both ways, as the enemy forces will be slow to cross the lake in the center of the map. The forests all provide defense cover, making it easy to set up a defensive line on the near shore and take them out as they cross. Just keep in mind which weapons suffer penalties against water targets.

When taking on the boss and guards, the Doublas M2 only has a range 3 attack, meaning many of your units should be able to outrange it. The other two shouldn't be any problem to take down with a concentrated attack.

***

![](https://media.retroachievements.org/Badge/473480.png) [Lakeside Scavenger (5)](https://retroachievements.org/achievement/417441)   
_Find all 8 items in Episode 2_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473479.png) [Territory Control (5)](https://retroachievements.org/achievement/417453)   
_On Episode 2, capture both southern towers by the end of turn 3, and prevent the enemy recapturing either_

This is mostly a test on the new enemy AI. Texas Mack / Bood will take the northern tower, and will wait there until the eastern tower has been captured and left empty. If you keep the eastern tower occupied, they'll never move. You can also intentionally leave it open to lure them off their tower, though watch their movement range. They're Air movement type, so they aren't slowed down by the water or forest.

***

## Notable Recruits

* If you didn't recruit Getter Q on Episode 1, you'll want to grab Texas Mack for [Way Too Much High Power Man](https://retroachievements.org/achievement/417471). It's also a solid airborne unit for hunting down items on rough terrain.
* Gundam and Guncannon are available here, both of which can be upgraded for the [Heavy Weapons Pack](https://retroachievements.org/achievement/417472) achievement.

***

[**Episode 3 – Twilight River**](#episode3)

![Map3](https://github.com/RetroAchievements/guides/assets/167945285/743201af-41e5-4766-b763-479c0d15718e)

| Items               | Enemies                                       |
| :------------------ | :-------------------------------------------- |
| 1. Homing Missile   | 1. Dom x 5                                    |
| 2. Chobam Armor     | 2. Spartan K5                                 |
| 3. Rocket Punch     | 3. Venus-A [Ranged] / Mecha Ikkakuki [Ranged] |
| 4. Iron Cutter      | 4. Mazinger Z [Ranged] / Zeong [Ranged]       |
| 5. Heart of Justice | 5. Z Gundam [Ranged] / Doven Wolf [Ranged]    |
| 6. Heart of Justice | 6. Zssa x 3 [Ranged, Stationary]              |
| 7. Biosensor        | 7. Messala [Ranged, Stationary]               |
| 8. Mega Bazooka     | --                                            |


![](https://media.retroachievements.org/Badge/473481.png) [Episode 3 – Twilight River (5)](https://retroachievements.org/achievement/417429)   
_Defeat Messala and capture the enemy base_

A long narrow map due to the switchback in the middle. Most enemies are land-based, so the three rivers will slow them down and cluster them together. Setting a defensive line along one of the rivers will let you control the advance and prevent them from surrounding you. Watch out for the hero units (or their replacements) since they're high level with ranged attacks.

The boss has three guards this time around, and the mountainous terrain can slow down the approach of any units that aren't airborne. You'll want to be careful about overlapping fields of enemy fire.

***

![](https://media.retroachievements.org/Badge/473483.png) [Twilight Scavenger (5)](https://retroachievements.org/achievement/417442)   
_Find all 8 items in Episode 3_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473482.png) [Hold the Line (10)](https://retroachievements.org/achievement/417454)   
_On Episode 3, prevent any enemy units from crossing the second river_

You'll need to move fast to make it to the second river (highlighted in yellow on the map) on time.  You can let them enter the river, but have to stop them from reaching the southern shore. Venus A / Zeong will reach the river on Turn 2, and cross it on Turn 3 if you don't stop them. You can get there with a land unit with 7 movement, or a flying unit with 6 movement deployed ahead of your leader. Once you get there, if you hold the corner most of the enemy force will pile up trying to take the shortest path, but you'll need to spread out across the river as more arrive. You can to rotate out your front-line units if they take too much damage and heal at the nearby tower. Mazinger Z / Mecha Ikkakuki and Z Gunadm / Doven Wolf have ranged attacks, so you'll want to take them down before they can put too much fire on your lines, though it means that they won't try to move forward as long as they have someone to target.

***

## Notable Recruits

* Mazinger Z is necessary for [Scrander Cross](https://retroachievements.org/achievement/417468), and becomes a strong all-around unit once fully upgraded. It's also level 5, meaning it'll be up to speed with your strongest units immediately.
* Z Gundam is necessary for [Waverider Crash](https://retroachievements.org/achievement/418782), and its Waverider Mode gives it air movement. It's main weapon however is bad against water units, and it can be fragile without specific help.
* Venus A isn't necessary for any specific achievements, but is also an airborne unit that comes at level 5.

***

[**Episode 4 – Pandemonium**](#episode4)

![Map4](https://github.com/RetroAchievements/guides/assets/167945285/3a80d3b2-74a6-4ae9-8d4c-731b7ec6b6af)

| Items               | Enemies                              |
| :------------------ | :----------------------------------- |
| 1. Magnet Coat      | 1. Obeleus x 4 [Ranged]              |
| 2. Heart of Justice | 2. Hambrabi x 3                      |
| 3. Heart of Justice | 3. Hyakushiki / Gaplant              |
| 4. Photon Missile   | 4. Great Mazinger Z [Ranged] / The O |
| 5. Chobam Armor     | 5. Getter-1 / Spartan K5             |
| 6. Chobam Armor     | 6. Zssa x 2 [Ranged, Stationary]     |
| 7. Super Alloy-Z    | 7. Doven Wolf [Ranged, Stationary]   |
| 8. Biosensor        | --                                   |


![](https://media.retroachievements.org/Badge/473484.png) [Episode 4 – Pandemonium (5)](https://retroachievements.org/achievement/417430)   
_Defeat Doven Wolf and capture the enemy base_

Welcome to your first indoor map. The impassible walls will restrict your movement, but your ranged units can still fire over them. The diamond tiles and broken floors both reduce incoming damage. The pillars instead count as Sea tiles for damage calculations, but not for movement.

The enemy forces will split up and advance around both sides of the map. The west side tends to be heavier, so if you split up your forces to match, you'll want to send your stronger units West to meet them. The corners near the southern towers are easy defensive points since the enemy pathing will get hung up on them. Your ranged units can provide covering fire from behind the wall, though the Obeleus and Great Mazinger can fire back.

The boss's guards are set to cover the side hallways. You can either take them down over the wall, or slip past to fight them more directly. They're far enough apart that they can't provide much help for each other.

***

![](https://media.retroachievements.org/Badge/473486.png) [Pandemonium Scavenger (5)](https://retroachievements.org/achievement/417443)   
_Find all 8 items in Episode 4_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473485.png) [Sniper Duel (5)](https://retroachievements.org/achievement/417455)   
_On Episode 4, defeat Doven Wolf without entering the central room_

This one's mostly a test of understanding the map layout. The tower south of the central room is exactly 4 tiles away from Doven Wolf, meaning that any strong enough unit with Range 4 can take it on. Claim all of the outer towers to increase the healing your towers generate, and reduce the healing that Doven Wolf gets. The rest of your team can clean up the Zssa at the same time.

***

## Notable Recruits

* Great Mazinger is necessary for [Great Booster](https://retroachievements.org/achievement/417469). It's a strong flying unit, though it only comes at level 4 meaning it'll need some work to bring it up to speed, and limited to Range 3.
* Getter-1 is necssary for [Getter Change Attack](https://retroachievements.org/achievement/418784), in addition to being a highly-adaptable unit in general.
* Hyakushiki is the last option for [Heavy Weapons Pack](https://retroachievements.org/achievement/417472) if you didn't grab either Gundam or Guncannon earlier.
* Hambrabi is your first chance for [Form Over Function](https://retroachievements.org/achievement/429336), though they're pretty poor units overall.
* Gaplant is also an option for [Form Over Function](https://retroachievements.org/achievement/429336), but they're only available here if you already have Hyakushiki on your team.

***

[**Episode 5 – Behind Trap**](#episode5)

![Map5](https://github.com/RetroAchievements/guides/assets/167945285/db502834-9f45-40a3-8593-81578bc70d78)

| Items                | Enemies                               |
| :------------------- | :------------------------------------ |
| 1. Drill Missile     | 1. Dom x 3                            |
| 2. Heart of Justice  | 2. Saki x 2                           |
| 3. Jet Scrander      | 3. Obeleus [Ranged]                   |
| 4. Biosensor         | 4. Minerva X                          |
| 5. D. Pressure Punch | 5. 𝜈Gundam [Ranged] / Sazabi [Ranged] |
| 6. Chobam Armor      | 6. Getter Dragon / Berga Giros        |
| 7. Super Alloy-Z     | 7. Sazabi x 3 [Ranged, Stationary]    |
| --                   | 8. Geymalk [Ranged, Stationary]       |
| --                   | R. Dom x 3 [Turn 3+]                  |


![](https://media.retroachievements.org/Badge/473487.png) [Episode 5 – Behind Trap (5)](https://retroachievements.org/achievement/417431)   
_Defeat Geymalk and capture the enemy base_

The map layout is similar to Episode 2, though the locations are reversed and the center is easier to traverse. This is also your introduction to enemy reinforcements. Reinforcements are always the same unit, and appear on the same tile. One will spawn each turn as long as the tile isn't occupied at the start of the enemy turn, until the limit is reached.

The enemies here are reasonably strong, but don't really offer much surprising. Set up near the central tower, andOnly the Obelius and 𝜈Gundam / Sazabi are set to use their ranged attacks, though Sazabi is special in that it's the first enemy with a Range 5 weapon. The reinforcements will spawn early enough that they'll mostly just extend the initial wave, but the Doms are probably the weakest part.

The boss's guards are more Sazabi, and the Geymalk also has a Range 5 weapon, so you'll have to be careful about moving into range too soon. They're laid out diagonally, so your Range 4 units can still take them on one at a time, but your safe zones are smaller.

***

![](https://media.retroachievements.org/Badge/473489.png) [Trapped Scavenger (5)](https://retroachievements.org/achievement/417444)   
_Find all 7 items in Episode 5_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473488.png) [Domination (5)](https://retroachievements.org/achievement/417456)   
_On Episode 5, defeat all Doms, including reinforcements, before the end of turn 9_

Another speed check. As long as you can clean up the main enemy wave quickly, you should have time to push forward and get the last Dom before the time limit.

***

## Notable Recruits

* Getter Dragon's Poseidon form is necessary for [Lord of the Sea](https://retroachievements.org/achievement/418785), and is a slightly better version of Getter-1.
* 𝜈Gundam is necessary for [Remote Weapons Expert](https://retroachievements.org/achievement/418783).
* Minerva X is a unique case, being considered a Super Robot type for recruitment, despite not being part of any starting roster. It's similar in power to the baseline Mazinger Z, but lacks the later upgrades to keep it relevant later in the game.
* Sazabi is another special case, being the only non-boss unit with a range 5 weapon. This means Sazabi can safely, if slowly, beat most of the stationary boss escorts and even some of the bosses.

***

[**Episode 6 – Sub Sea Battle**](#episode6)

![Map6](https://github.com/RetroAchievements/guides/assets/167945285/8ef7bc80-95af-4f08-8187-cf5b50469a45)

| Items               | Enemies                               |
| :------------------ | :------------------------------------ |
| 1. Chobam Armor     | 1. Zuu x 2                            |
| 2. Biosensor        | 2. Z'Gok x 3 [Ranged]                 |
| 3. Super Alloy-Z    | 3. Bood x 2 [Ranged, Tower]           |
| 4. Chobam Armor     | 4. Capule x 3 [Ranged, Stationary]    |
| 5. Chobam Armor     | 5. Qubelay [Ranged, Stationary]       |
| 6. Chobam Armor     | 6. Messala [Ranged, Stationary]       |
| 7. Great Boomer     | 7. Pallas Athene [Ranged, Stationary] |
| 8. Heart of Justice | 8. Big Zam [Ranged, Stationary]       |
| --                  | R. Bood x 4 [Ranged] [Turn 8+]        |


![](https://media.retroachievements.org/Badge/473490.png) [Episode 6 – Sub Sea Battle (5)](https://retroachievements.org/achievement/417432)   
_Defeat Big Zam and capture the enemy base_

This is the largest map so far, and almost completely wide open. Most of the map is covered in water though, so your land units will be mostly restricted to the various land bridges.

The initial enemies are lighter than usual, as half of the enemies are stationary. One of the Boods will move to a tower and wait for an open tower to activate, though the other will engage directly. The open map doesn't lend itself to any particular defensive points, but the enemies are light enough you can deal with them on the way. The reinforcements come late enough that you should have the others cleaned up before they arrive.

The boss has 3 guards, but they're spread out, and all of them are Range 4 again. The Qubelay and Big Zam are both much more durable, so you'll need to bring a fair bit of firepower to bear.

***

![](https://media.retroachievements.org/Badge/473492.png) [Undersea Scavenger (5)](https://retroachievements.org/achievement/417445)   
_Find all 8 items in Episode 6_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473491.png) [Flanking Maneuver (5)](https://retroachievements.org/achievement/417457)   
_On Episode 6, defeat Big Zam without damaging any enemy Capules_

The challenge here is pretty light. You'll want to navigate around the edges of the map to get to the boss without getting worn down. It's a bit slower, so you'll probably have reinforcements appearing while you're en route, but there's ample space to set up and deal with them. Once the Big Zam is defeated, you're free to circle back to the Capules to not miss out on any XP.

***

## Notable Recruits

* None

From now on, you'll see more prior boss enemies repurposed as normal enemies. These retain their 0 Loyalty immunity to being enlisted, so you'll have fewer opportunities to enlist units as the game goes on. Qubelay, despite not being a boss, also has 0 Loyalty, making it similarly immune.

***

[**Episode 7 – Relay Base Battle**](#episode7)

![Map7](https://github.com/RetroAchievements/guides/assets/167945285/b5ef50bb-e0d6-4623-b4cb-a81a4f67a3bc)

| Items               | Enemies                                   |
| :------------------ | :---------------------------------------- |
| 1. Heart of Justice | 1. Zaku x 3                               |
| 2. Mega Bazooka     | 2. Ryne X1                                |
| 3. Breast Fire      | 3. Zssa [Ranged]                          |
| 4. Chobam Armor     | 4. Messala [Ranged]                       |
| 5. Super Alloy-Z    | 5. Vigna Ghina                            |
| 6. Biosensor        | 6. Bawoo x 2                              |
| 7. Magnet Coat      | 7. Pallas Athene x 2 [Ranged, Stationary] |
| --                  | 8. Psycho Gundam [Ranged, Stationary]     |
| --                  | R. Messala x 5 [Ranged] [Turn 12+]        |


![](https://media.retroachievements.org/Badge/473493.png) [Episode 7 – Relay Base Battle (10)](https://retroachievements.org/achievement/417433)   
_Defeat Psycho Gundam and capture the enemy base_

Another indoor map, and we're back to tight spaces. There's a mostly clear route in the center, but it's chopped up with walls of columns and scattered broken floor tiles.

The aggressive force is an eclectic mix of units, including the last appearance of the Zaku. The Vigna Ghina is remarkably fast and hits hard, so you'll want to keep it away from your softer units. Ranged support comes from a Zssa and a Messala, though the Messala's terrible move speed means that it'll often be late to the party.

When approaching the boss, land units will probably need to take the east path, since the rough terrain on the west side would slow them to a crawl. Psycho Gundam is a bit of a bruiser, but the columns nearby offer some solid protection for grounded units, since all of their weapons are only 60% effective on Sea tiles. Watch out for the reinforcements, since they're likely to pop in as you're nearing the boss, and can fire as soon as they appear.

***

![](https://media.retroachievements.org/Badge/473495.png) [Base Scavenger (5)](https://retroachievements.org/achievement/417446)   
_Find all 7 items in Episode 7_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473494.png) [Divide and Conquer (10)](https://retroachievements.org/achievement/417458)   
_On Episode 7, defeat Psycho Gundam before reinforcements arrive_

You're on the clock again, and while getting through the initial wave won't take too long, you may be hard pressed to cut through the Psycho Gundam in time. Splitting off a few weaker units to capture towers to the sides while your heavy hitters push forward will cut down on the healing Psycho Gundam gets from the base. The Pallas Athenes don't need to be beaten, so you can just run past and weather the extra attacks. You've only got until the end of your turn 12 to finish things, since reinforcements spawn at the start of the enemy turn.

If you're having trouble getting it done, there is a plan B. Reinforcements always spawn in the same place, and _can't_ spawn if that tile is occupied. Putting one of your units on the spawn tile will delay the reinforcements until you move away, meaning you can stall for time while the rest of your team finishes the job. It's a bit of a gamble though, as the spawn tile is within firing range of Psycho Gundam and adjacent to a Pallas Athene.

***

## Notable Recruits

* The Vigna Ghina is the standout recuitable unit this time. It's got overall solid stats, and 8 movement to compensate for being stuck on land. It lacks any ranged weapons though. Worth picking up if your team is a bit thin, but by no means critical.

***

[**Episode 8 – Mountain Memories**](#episode8)

![Map8](https://github.com/RetroAchievements/guides/assets/167945285/a8c276f0-fccd-4e1a-88d0-6c1b569d9104)

| Items               | Enemies                             |
| :------------------ | :---------------------------------- |
| 1. Biosensor        | 1. Berga Giros x 2                  |
| 2. Chobam Armor     | 2. Gabthley x 2                     |
| 3. Breast Burn      | 3. Gaplant x 2                      |
| 4. Heart of Justice | 4. Zai x 2                          |
| 5. Biosensor        | 5. The O                            |
| --                  | 6. Zssa x 2 [Ranged, Stationary]    |
| --                  | 7. Qubelay x 2 [Ranged, Stationary] |
| --                  | 8. Quin Mantha [Ranged, Stationary] |
| --                  | R. Gaplant x 5 [Ranged] [Turn 4+]   |


![](https://media.retroachievements.org/Badge/473496.png) [Episode 8 – Mountain Memories (10)](https://retroachievements.org/achievement/417434)   
_Defeat Quin Mantha and capture the enemy base_

A deceptively small map, given that half of the area is covered with impassible tiles. Land units are basically forced to navigate down and around the central mountains, but the path is clear of obstacles meaning that they'll mostly be able to keep pace.

Another mixed force on offense. Most of the units are pretty fast, aside from the Zai who trade speed for durability. However, they're all grounded and none of them have ranged options. You can easily set up a choke point in the mountains around the southern tower. Reinforcements spawn pretty close to the front lines and pop up early, but they shouldn't really change your strategy.

The boss is a bit tougher, with a range 5 weapon and four bodyguards. There's a lot of firepower available, and no cover, so anyone charging in will need to be tough to survive the barrage. Only the Quin Mantha can heal though, so you can eventually wear down the bodyguards and leave it isolated for a final push.

***

![](https://media.retroachievements.org/Badge/473498.png) [Mountain Scavenger (5)](https://retroachievements.org/achievement/417447)   
_Find all 5 items in Episode 8_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473497.png) [Close Quarters Combat (10)](https://retroachievements.org/achievement/417459)   
_On Episode 8, defeat Quin Mantha only attacking it or being attacked by it at range 1_

This one's a puzzle challenge, completely block* Ting out most of the area around the boss. There's two ways to handle this:
* The slow easy way - If you recruited a Sazabi on Episode 5, it can hit all of the bodyguards from outside the Quin Mantha's range. It may take a while, given how durable the Qubelays are, but all but the rear Qubelay are perfectly safe. For the rear Qubelay, there's a blind spot in the southwest corner where a range 4 unit can fight the Qubelay from outside the Quin Mantha's range. Once all the bodyguards are down, your strongest units can rush in to finish the job.
* The hard way - Without the Sazabi, you can only remove the upper Zssa and rear Qubelay without risking an attack from Quin Mantha. Take those out, and then choose your two strongest/most durable units. Move them around the north side, dodging Quin Mantha's range, and then rush them both in to fight Quin Mantha at close range. You'll eat some fire from the remaining bodyguards, but Quin Mantha will have to engage you directly, eating counter attacks along the way. Retreat if you get too worn down, and rotate in some backup if you've got extra units that are tough enough. Quin Mantha will get some healing from the base, but it should be pretty limited if you've captured all of the other towers.

***

## Notable Recruits

* The O is the strongest recruitable unit here, similar to the Vigna Ghina from the prior Episode, but this map clearly demonstrates its limitations.
* Gaplant and Gabthley are options for [Form Over Function](https://retroachievements.org/achievement/429336). Both are mediocre but mobile units particularly in their Mobile Armor forms. 

***

[**Episode 9 – Death Labyrinth**](#episode9)

![Map9](https://github.com/RetroAchievements/guides/assets/167945285/c2763a48-24d5-466f-8910-e40f4bbcde0c)

| Items               | Enemies                              |
| :------------------ | :----------------------------------- |
| 1. Biosensor        | 1. Mecha Ikkakuki x 2 [Ranged]       |
| 2. Chobam Armor     | 2. Berga Dalas x 3                   |
| 3. Chobam Armor     | 3. Dahgi Iris                        |
| 4. Heart of Justice | 4. Capule x 2 [Ranged, Stationary]   |
| 5. Super Alloy-Z    | 5. Elmeth x 2 [Ranged, Stationary]   |
| --                  | 6. Geymalk x 2 [Ranged, Stationary]  |
| --                  | 7. Azieru Alpha [Ranged, Stationary] |
| --                  | R. Dahgi Iris x 5 [Ranged] [Turn 5+] |


![](https://media.retroachievements.org/Badge/473499.png) [Episode 9 – Death Labyrinth (10)](https://retroachievements.org/achievement/417435)   
_Defeat Azieru Alpha and capture the enemy base_

The overall layout of this map is super tight, with several 1-tile wide paths. There also aren't any towers near the player start point, so you'll have to make significant progress before you have access to their healing. Your leader's Spirit commands can come in handy here, with Guts healing your leader and Friends healing your whole team.

There's only a few aggressive enemies at the start, but there's a nasty surprise included. Mixed in with the unremarkable Berga Dalas, there's a dangerously powerful Dahgi Iris. It's much faster than the rest of the enemy team, meaning it can land double-attacks on your slower units. To make things worse, around when you're dealing with the first one, more Dahgi Iris will spawn as reinforcements in the middle of the map, and these can use a range 3 weapon. There's no shortage of chokepoints to set up at, but you'll need some strong point units to endure their attacks.

The boss's bodyguards are holding a chokepoint at the top of the map. It's a mix of range 4 and range 5, laid out such that any of your range 4 units is going to be in range of multiple enemies. The Azieru Alpha has a whopping 6 range, meaning it also helps cover the enemy line. Once the front line is down though, dealing with the Azieru Alpha is much easier, thanks to a tower you can capture within firing range. 

***

![](https://media.retroachievements.org/Badge/473501.png) [Labyrinth Scavenger (5)](https://retroachievements.org/achievement/417448)   
_Find all 5 items in Episode 9_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473500.png) [King of the Hill (10)](https://retroachievements.org/achievement/417460)   
_On Episode 9, defeat both Capules and capture the center tower before the end of turn 10_

This challenge asks you to head directly into the most dangerous part of the map, where the reinforcements are actively spawning. You'll have to split your team up to advance on both sides of the map, as the narrow halls mean that having all six initial enemies on one side will stall you too long. The west side will probably clear first since the Dahgi Iris will be on the East, but this will lure the reinforcements to that side. You only need to defeat the stationary Capules and capture the tower in time, so you can try dodging past the reinforcements or blocking their spawn until the goal is complete.

***

## Notable Recruits

* Unsurprisingly, the Dahgi Iris is the strongest recruit here. It's limited by it's 6 move and land movement, and it's only range 3, but it brings a lot of raw stats. The one that spawns initially is one level higher than the reinforcements.

***

[**Episode 10 – Archipelago Attack**](#episode10)

![Map10](https://github.com/RetroAchievements/guides/assets/167945285/1a75bba2-4308-4b27-bbb1-0640380abfc6)

| Items           | Enemies                             |
| :-------------- | :---------------------------------- |
| 1. Chobam Armor | 1. Baund Doc x 3 [Ranged]           |
| 2. Biosensor    | 2. Glossam X2 x 4 [Ranged]          |
| 3. Biosensor    | 3. Gratonios x 2 [Tower]            |
| 4. Chobam Armor | 4. Berga Giros                      |
| 5. Chobam Armor | 5. Berga Dalas                      |
| 6. Chobam Armor | 6. Qubelay x 2 [Ranged, Stationary] |
| 7. Biosensor    | 7. Zssa x 2 [Ranged, Stationary]    |
| --              | 8. Pidgoron [Ranged, Stationary]    |
| --              | R. Gratonios x 6 [Turn 26+]         |


![](https://media.retroachievements.org/Badge/473502.png) [Episode 10 – Archipelago Attack (10)](https://retroachievements.org/achievement/417436)   
_Defeat Pigdoron and capture the enemy base_

Another pretty large and open map, but the flow of the enemy units means that most of the action will take place on the east side of the map. There's a lot of water in the middle, but the start and end of the map are both solidly on land.

There are a lot of different aggressive enemies, but they start spread out, meaning they won't be able to concentrate their forces. Take out the Baund Docs coming in from the west, and then prepare for the waves from the north. The Qubelays won't move, so you can ignore them until everything else has been handled.

Pigdoron only has two Zssa as backup, but it doesn't really need it. His 6 range covers the entire northern plain, and he's got a whopping 40 defense, meaning you'll need to bring at least 40 attack to damage him. He's an air movement unit, so he doesn't get the defense bonus from the enemy base, but he'll still heal from it. Just make sure your weapons have 100% air affinity. The reinforcements here show up very late, so you may need to break off from fighting Pigdoron to handle them.

***

![](https://media.retroachievements.org/Badge/473503.png) [Archipelago Scavenger (5)](https://retroachievements.org/achievement/417449)   
_Find all 7 items in Episode 10_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473340.png) [Cornered (10)](https://retroachievements.org/achievement/417461)   
_On Episode 10, defeat all Baund Docs and Glossam X2s without moving north or west of the southeast tower_

This one's a bit of a breather compared to most recent challenges. You can capture the southeast tower, labeled in yellow on the map, but you can't move past it. You'll probably have to fall back from the tower a bit as the Glossam X2s arrive, since they've got ranged attacks and will gladly use them. The other aggressive units aren't part of the challenge, but they'll likely end up in the melee. Just be careful with your positioning, since you can't move through your own units.

***

## Notable Recruits

* The Baund Docs are your last chance for [Form Over Function](https://retroachievements.org/achievement/429336) as well as being reasonable mobile units albeit limited to range 3.

***

[**Episode 11 – Girgilgun Mystery**](#episode11)

![Map11](https://github.com/RetroAchievements/guides/assets/167945285/b1dd054f-657f-445b-844c-9aa7f72ae33f)

| Items               | Enemies                                        |
| :------------------ | :--------------------------------------------- |
| 1. Chobam Armor     | 1. Bawoo x 2                                   |
| 2. Heart of Justice | 2. Zai x 3                                     |
| 3. Chobam Armor     | 3. The O x 2                                   |
| 4. Biosensor        | 4. Obeleus x 2 [Ranged, Tower]                 |
| 5. Chobam Armor     | 5. Doven Wolf x 2 [Ranged, Stationary]         |
| 6. Biosensor        | 6. Quin Mantha x 4 [Ranged, Stationary]        |
| 7. Chobam Armor     | 7. Girgilgun (First Form) [Ranged, Stationary] |
| 8. Super Alloy-Z    | R. The O x 8 [Turn 14+]                        |
| 9. Chobam Armor     | --                                             |


![](https://media.retroachievements.org/Badge/473504.png) [Episode 11 – Girgilgun Mystery(10)](https://retroachievements.org/achievement/417437)   
_Defeat Girgilgun and capture the enemy base_

The mountainous terrain on this map means that land units will either have to navigate the twisting passes in the south, or head north and follow the coast.

The enemies are mostly spread out, though the ones coming from the north will cluster around the stationary Doven Wolf duo. They're guarding the nearest tower, so you won't be able to set up there unless you rush them down quickly. You could also go around to the northern islands, or head though the mountains, avoiding them for now. The enemies aren't particularly dangerous, so you shouldn't have too much trouble cleaning things up. Reinforcements will likely show up after you've dealt with the initial waves, but before you engage the boss.

Girgilgun is your first look at the main villain, but his first form is a bit underwhelming. He can hit pretty hard, but he's limited to range 4. Each of the Quin Mantha bodyguards are almost as dangerous, if not as durable. There's limited solid ground around the boss, so you'll want air units to cover the other angles.

***

![](https://media.retroachievements.org/Badge/473506.png) [Mystery Scavenger (5)](https://retroachievements.org/achievement/417450)   
_Find all 9 items in Episode 11_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473505.png) [Amphibious Assault(10)](https://retroachievements.org/achievement/417462)   
_On Episode 11, prevent the reinforcements from leaving the water_

You'll need to head to the north end of the map for this one. The O reinforcements will appear out in the middle of the water, and their movement is low enough that they'll need several turns to reach land. You'll need to bring enough flying / aquatic units or ranged land units to defeat them in time. 8 is the most reinforcements you've seen so far, so you can't take too long with each or you risk getting overwhelmed. You'll want weapons with 100% sea affinity where possible.

***

## Notable Recruits

* None

***

[**Episode 12 – Girgilgun Revival**](#episode12)

![Map12](https://github.com/RetroAchievements/guides/assets/167945285/ff5a3143-7623-4ecd-8604-1a5cdf23a2b9)

| Items               | Enemies                                         |
| :------------------ | :---------------------------------------------- |
| 1. Biosensor        | 1. Bawoo x 2                                    |
| 2. Chobam Armor     | 2. Big Zam x 2                                  |
| 3. Heart of Justice | 3. Zeong x 4                                    |
| 4. Biosensor        | 4. Bood x 2 [Tower]                             |
| 5. Chobam Armor     | 5. Pallas Athene x 2 [Ranged, Stationary]       |
| 6. Chobam Armor     | 6. Messala x 2 [Ranged, Stationary]             |
| 7. Chobam Armor     | 7. Girgilgun (Second Form) [Ranged, Stationary] |
| --                  | R. Big Zam x 4 [Turn 2+]                        |

![](https://media.retroachievements.org/Badge/473507.png) [Episode 12 – Girgilgun Revival(10)](https://retroachievements.org/achievement/417438)   
_Defeat Girgilgun's Second Form and capture the enemy base_

A simple ring layout with you starting at the south end and the enemy in the north. The east side of the map has a much wider path, and the initial force is in the southwest, so you're pushed towards one side, but since the bulk of the northern forces are stationary you can realistically head either way.

The southern group are very close to your initial position, and some are in range to hit on the first turn. You can try to take them on right away, though you'll have more reinforcements spawning almost immediately. The more cautious option is to retreat to the west and use the two towers and mountains there to set up defensively. The Big Zams can hit really hard, so you'll want your toughest units up front.

Girgilgun's Second Form is a lot more impressive, with a range 6 weapon and some of the highest stats you've seen so far. The bodyguards are a downgrade, but they're lined up close enough that Girgilgun is going to take some shots at you when you engage. By now, you should know how to peel apart a boss formation.

***

![](https://media.retroachievements.org/Badge/473509.png) [Penultimate Scavenger (5)](https://retroachievements.org/achievement/417451)   
_Find all 7 items in Episode 12_

Visit the green tiles marked in the map above.

***

![](https://media.retroachievements.org/Badge/473508.png) [War of Attrition(10)](https://retroachievements.org/achievement/417463)   
_On Episode 12, defeat all southern enemies, including reinforcements, without claiming any towers_

With the Big Zam's having nearly 50 attack (counting weapon power) and there being six, this may seem like a lot of damage to endure without any healing from the towers. There's a trick here though. All of the Big Zam's weapons are only have 60% affinity in water, so a unit with 30+ defense under water is perfectly safe with them. And there's some convenient lakes in the middle of the enemy force. The Bawoo and Zeong can still hurt you, but they don't hit as hard are are much less durable. Your leader can heal up with the Guts of Friends spirit.

***

## Notable Recruits

* None, though this is your last chance to recruit any units to for [Humanity's Greatest... Ally?](https://retroachievements.org/achievement/417474) or [The Dynamic Dozen](https://retroachievements.org/achievement/417475)

***

[**Episode 13 – The Last Stand**](#episode13)

![Map13](https://github.com/RetroAchievements/guides/assets/167945285/e9d55048-5a12-4b5f-9c90-3d7257ecc64e)

| Enemies                                        |
| :--------------------------------------------- |
| 1. Qubelay x 2 [Ranged]                        |
| 2. Elmeth x 2 [Ranged]                         |
| 3. Quin Mantha x 2                             |
| 4. Psycho Gundam x 2                           |
| 5. Big Zam                                     |
| 6. Geymalk x 5 [Ranged, Stationary]            |
| 7. Girgilgun (Final Form) [Ranged, Stationary] |
| R. Psycho Gundam x 6 [Turn 2+]                 |

![](https://media.retroachievements.org/Badge/473686.png) [Episode 13 – The Last Stand (10)](https://retroachievements.org/achievement/417439)   
_Defeat Girgilgun's Second Form and capture the enemy base_

The final map is a complex layout, with lots of narrow paths and pillars to navigate. The only easily accessible towers are a pair in the center and a lone one at the end of a narrow passage in the north.

You start out surrounded, with enemies in each corner, and all but the northwest group moving in right away. Plus reinforcements will start showing up early on to add even more pressure. Your best bet is to move to the center, and wear them down as they approach. Most of the enemies, despite having ranged attacks, are coded not to use them. With strong units on good terrain, you should be able to weather the assault.

Then comes cracking Girgilgun's defenses. You've got a whopping 5 range 5 Geymalks lined up, with impassible walls forcing you into the middle of it. You can try slipping past the corners to wear down the ends, but you'll also need to dodge Girgilgun's 6 range that covers the area behind. The center Geymalk is also sitting on a tower, but Girgilgun isn't on a base this time. So any damage you can do to him is permanent. Once you land the final blow, you'll automatically finish the Episode and the game.

***

![](https://media.retroachievements.org/Badge/473510.png) [Invincible Heroes(10)](https://retroachievements.org/achievement/417464)   
_On Episode 13, defeat Girgilgun without losing any units_

This one's pretty reasonable if you've got a well-trained team. There's a lot of firepower here, so you'll need to keep your softer units out of the way, particularly of the scattered ranged units. If your backup forces aren't strong enough, there's no requirement to field a full team, so you can leave them behind for the final Episode. There's no item hunting left to do here. Note that the challenge is failed as soon as any unit is lost. Reviving them with the Love spirit doesn't count.

## Notable Recruits

* None - Everything here is flagged as a boss, and can't be recruited.

***

# 5) Recruiting Enemy Units

When adjacent to an enemy unit, instead of attacking them, you have the option to try to enlist them, causing them to join your team. Enemy units may also rarely try to enlist your units. Enlisting an enemy unit uses the following formulas:

> `Persuasion Power = Charisma + (Level * 10) + (2 * (Target Max HP / Target Cur. HP)) + Compatibility Factor`
>
> `Persuasion Resistance = Loyalty + (Level * 10) + (# of Towers * 10)`
>
> `Persuasion Chance = Persuasion Power - Persuasion Resistance`

Compatibility Factor depends on the type of unit attempting to persuade (on the left of the table) vs. the type of unit being persuaded (on the top of the table).

| --            | Super Robot | Gundam Hero | Generic Enemy | Mechabeast |
| :------------ | :---------- | :---------- | :------------ | :--------- |
| Super Robot   | 50          | 40          | -30           | -50        |
| Gundam Hero   | 40          | 40          | 0             | -40        |
| Generic Enemy | 30          | 0           | 30            | 20         |
| Mechabeast    | -50         | -50         | 0             | 20         |

> Super Robot includes all of the Mazinger starting team, all of the Getter starting team (except Getter Q), and Minerva X.
> Gundam Hero includes all of the Gundam starting team.
> Generic Enemy includes all Gundam-origin enemy units and Getter Q.
> Mechabeast includes all Mazinger-origin and Getter-origin enemy units. (Any units with the letter-number suffix, like Doublas M2, and any of the animal-like units, like Zuu.)

There are a few limitations on enlisting:
* You can only have 8 units on the map at any given time.
* You can only have 12 units total at any given time, including reserve units you didn't deploy on the map.
* Enemies with 0 Loyalty have maxed persuasion resistance, preventing them from being recruited normally.
  * Your leader is set to 0 Loyalty.
  * There's a bug where 0 Loyalty units at very low HP have a very small chance of being recruited.
* Having your leader cast the Heart Spirit Command will cause your next enlist chance to always succeed.
  * This doesn't work against 0 Loyalty units.

***

![](https://media.retroachievements.org/Badge/473695.png) [The Power of Friendship (5)](https://retroachievements.org/achievement/417473)   
_Enlist an enemy unit_

Any unit counts here, including units from other starting teams.

***

![](https://media.retroachievements.org/Badge/473696.png) [Humanity's Greatest... Ally? (10)](https://retroachievements.org/achievement/417474)   
_Enlist an enemy mechabeast_

Mechabeasts have a negative compatibility with Super Robot or Gundam Hero units, meaning you'll have a better chance enlisting a Generic Enemy first and have that enlist the Mechabeast. Getter Q is a Generic Enemy, giving the Getter team a bit of early advantage. There are one or two Mechabeasts on most Episodes, so you've got time to complete this. However, Episode 12 is your last chance.

***

![](https://media.retroachievements.org/Badge/484163.png) [Form Over Function (5)](https://retroachievements.org/achievement/429336)   
_Enlist a Hambrabi, Gaplant, Gabthley, or Baund Doc and transform it into its Mobile Armor form_

The AI will never use the Form command, meaning you'll never see the Mobile Armor forms for any of these units on the enemy side. These units are only available on the following Episodes:
* Hambrabi - Episode 4
* Gaplant - Episode 4 (Hyakushiki replacement), 8
* Gabthley - Episode 8
* Baund Doc - Episode 10

Messala and Psycho Gundam also have unused Mobile Armor forms, but since both are 0 Loyalty boss units, they don't count for this achievement.

***

![](https://media.retroachievements.org/Badge/473697.png) [The Dynamic Dozen (10)](https://retroachievements.org/achievement/417475)   
_Complete a stage and reach the intermission with a full team of 12 units, including reserve units_

You'll have to reach the end of the mission for this to count, so make sure any new recruits survive.

***

# 6) Unit-Specific Achievements

![](https://media.retroachievements.org/Badge/473687.png) [Newtype (10)](https://retroachievements.org/achievement/417465)   
_Reach level 10 with any Gundam, Guncannon, or Hyakushiki_

![](https://media.retroachievements.org/Badge/473688.png) [God or Demon? (10)](https://retroachievements.org/achievement/417466)   
_Reach level 10 with Mazinger Z, Great Mazinger, Aphrodite-A, Diana-A, or Venus-A_

![](https://media.retroachievements.org/Badge/473689.png) [Getter Ray Evolution(10)](https://retroachievements.org/achievement/417467)   
_Reach level 10 with Getter Robo, Getter Robo G, Getter Q, or Texas Mack_

These require one unit from each starting team, so you'll need to enlist at least one from each other team along the way to get this in a single playthrough. Your main combat units should hit level 10 by the end of the game. There's a soft cap on level of Episode # plus 2, so the earliest you'll be able to see any unit reach this is Episode 8. When a unit starts getting only 1 EXP per level, that's your indicator to let others get the finishing blow.

* Any Gundam includes original Gundam, Z Gundam, ZZ Gundam, 𝜈Gundam, and F-91. Psycho Gundam isn't valid, as it's an enemy boss unit.
* Getter Robo is Getter 1 / 2 / 3 and Getter Robo G is Getter Dragon / Liger / Poseidon.

***

![](https://media.retroachievements.org/Badge/473690.png) [Scrander Cross (5)](https://retroachievements.org/achievement/417468)   
_Upgrade Mazinger Z with the Iron Cutter, Drill Missile, Breast Fire, and Jet Scrander_

You'll need to either start with Mazinger Z or enlist them on Episode 3. The listed items are all exclusive to Mazinger Z, so you don't need to worry about wasting them and can use them right away. They'll just need to survive until you can collect all the parts.
* Iron Cutter - Episode 3
* Drill Missile - Episode 5
* Breast Fire - Episode 7
* Jet Scrander - Episode 5

***

![](https://media.retroachievements.org/Badge/473691.png) [Great Booster (5)](https://retroachievements.org/achievement/417469)   
_Upgrade Great Mazinger with the Drill Pressure Punch, Great Boomerang, and Breast Burn_

You'll need to either start with Great Mazinger or enlist them on Episode 4. The listed items are all exclusive to Great Mazinger, so you don't need to worry about wasting them and can use them right away. They'll just need to survive until you can collect all the parts.
* Drill Pressure Punch - Episode 5
* Great Boomerang - Episode 6
* Breast Burn - Episode 8

***

![](https://media.retroachievements.org/Badge/473692.png) [Battlefield Goddess (4)](https://retroachievements.org/achievement/417470)   
_Upgrade Aphrodite-A or Diana-A with the Rocket Punch and Photon Missile_

You'll need to either start with Aphrodite-A and Diana-A or enlist one of them on Episode 1. You only need one of the two. Both items need to be used on one unit, and it is possible to waste copies of each item by using them on the same unit more than once.
* Rocket Punch - Episodes 1, 3
* Photon Missile - Episodes 2, 4

***

![](https://media.retroachievements.org/Badge/473693.png) [Way Too Much High Power Man (3)](https://retroachievements.org/achievement/417471)   
_Upgrade Getter Q or Texas Mack with a Homing Missile_

You'll need to either start with Getter Q and Texas Mack or enlist one of them on Episode 1 or Episode 2. You only need one of the two.
* Homing Missile - Episodes 2, 3

***

![](https://media.retroachievements.org/Badge/473694.png) [Heavy Weapons Pack (3)](https://retroachievements.org/achievement/417472)   
_Upgrade Gundam, Guncannon, or Hyakushiki with a Mega Bazooka_

You'll need to either start with the original Gundam, Guncannon, and Hyakushiki or enlist one of them on Episode 2 or Episode 4. You only need one of the three. The other Gundams aren't valid for this upgrade.
* Mega Bazooka - Episodes 2, 3, 7

***

![](https://media.retroachievements.org/Badge/473102.png) [Getter Change Attack (5)](https://retroachievements.org/achievement/418784)   
_In a single Episode, defeat an enemy with each of Getter 1, Getter 2, and Getter 3_

You'll need to either start with Getter Robo or enlist them on Episode 4. As long as they're up to speed with your main combat team, it shouldn't be hard to get them 3 kills. Getter 3 will be the slowest on most maps due to Sea movement type, but it's also got a range 4 weapon, so it can pick something off to get the necessary kill.

***

![](https://media.retroachievements.org/Badge/473103.png) [Lord of the Sea (5)](https://retroachievements.org/achievement/418785)   
_With Getter Poseidon, defeat an enemy Sea-type enemy in the water_

You'll need to either start with Getter Robo G or enlist them on Episode 5. Both Getter Poseidon and the enemy have to be in the water during the final blow. There are relatively few Sea movement enemies, especially later in the game, so you'll want to grab this early on.
* If you're starting with the Getter team, this one's easy to grab on Episode 1. The enemy Z'Goks will stick to the water on the north edge of the map if they can, so you can send Getter Poseidon to meet them. Even starting at level 1 they should be easy targets.
* Otherwise, Episode 6 is the easiest as there's lots of water and lots of targets in the Z'Goks, Zuus, and even the stationary Capules. Just make sure to defeat the Big Zam before the Capules if you're going for [Flanking Maneuver](https://retroachievements.org/achievement/417457).
* The Glossam X2s on Episode 10 are your last chance, though you can't get this and [Cornered](https://retroachievements.org/achievement/417461) in the same run, since there's no water tiles in your starting corner.

***

![](https://media.retroachievements.org/Badge/473100.png) [Waverider Crash (5)](https://retroachievements.org/achievement/418782)   
_With Z Gundam's Wave Rider mode, move the maximum distance and defeat an enemy in the same turn_

You'll need to either start with Z Gundam or enlist them on Episode 3. Wave Rider's maximum movement is 6 tiles, and since it's Air movement, you don't need to worry about terrain slowing you down. It also retains access to Z Gundam's highest power weapon, though it's bad against units in the water.

***

![](https://media.retroachievements.org/Badge/473101.png) [Remote Weapons Expert (5)](https://retroachievements.org/achievement/418783)   
_With 𝜈Gundam, defeat an enemy equipped with Funnels at range 4_

You'll need to either start with 𝜈Gundam or enlist them on Episode 5. Only enemy units that have specifically a weapon named Funnel count, which are listed below. You won't be able to out-range any of them, but you're safe from counter attacks and can easily set up a finishing blow for 𝜈Gundam.
* Sazabi - Episode 5
* Azieru Alpha - Episode 9
* Qubelay - Episode 6, 8, 10, 13
* Quin Mantha - Episode 8*, 11, 13
  * Episode 8 will prevent you from earning [Close Quarters Combat](https://retroachievements.org/achievement/417459) in the same run.
* Geymalk - 5, 9, 13

***

# 7) Miscellaneous Achievements

![](https://media.retroachievements.org/Badge/484162.png) [Double Barrel (10)](https://retroachievements.org/achievement/426022)   
_Have enough speed advantage to get a second attack, and defeat an enemy with it_

You'll need a 20-point speed advantage to get a second attack. Higher level Gundam units can get this pretty easily, but Super Robots can also get this when fighting slower enemies like the Zai. These slow units also tend to be tougher, which makes it easier to set them up so the second attack kills. Using Magnet Coats can help boost middling units over the threshold as well.

***

![](https://media.retroachievements.org/Badge/473335.png) [Solo Robot War (10)](https://retroachievements.org/achievement/418975)   
_Clear an Episode with only your leader_

If your leader is near the current level cap, this can be pretty easy to pull off on most Episodes. You'll need to play it safe, as you don't have any other units to draw fire, but you can leverage the Guts, Flash, or Friends Spirit Commands to mitigate incoming damage. Since your leader is alone, they'll get all of the EXP for the mission, which can help propel them to the cap and give them an extra boost for the latter half of the mission.

***