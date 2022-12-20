---
issue: 2022-10
order: 202210-12
layout: article
author: RANews
title: Community News
toc: true
---

## Playstation 2 Launch Event

Celebrating PS2 and 10 Years of RetroAchievements!

In what will be our last big console launch for the foreseeable future, as well as our biggest launch ever (75+ games when the previous high was 30). The Events Team is having a simple contest to jump into the library.

Earn 5 PS2 Masteries = Earn a Bronze Badge  
Earn 10 PS2 Masteries = Earn a Silver Badge  
Earn 15 PS2 Masteries = Earn a Gold Badge  

This ends at the end of the year. The full list of PS2 sets can be found [here](https://retroachievements.org/gameList.php?c=21).

## Retro Olympics 2022

<figure style="text-align:center;float:right;width:50%;height:50%;margin-inline-start:0px;margin-inline-end:30px;">
<img src="img/RetroOlympics.png" width="256" height="256">
<figcaption></figcaption>
</figure>

Ready for the Retro Olympics? The team of volunteers is! It's time for the 2022 Retro Olympics Opening Ceremony! Who got teamed up with who? What teams will face each other in the group stage? And most importantly, what games and challenges will the competitors be taking up to the test? Check it all out [here](https://www.youtube.com/watch?v=8a961UGn4J8).

Want a recap of everything told, or want to know when you are up to play? All information you need will always be available in the Retro Olympics 2022 Schedule, available [here](https://docs.google.com/spreadsheets/d/16VsoyJW8DG2RB4r3MoGHOz-rqZyZ3-EjGk7ITOxUc5w/edit?usp=sharing).

The first Best of 3 will take place on November 5th, so make sure you contact all your teammates, get together in a Discord group, and pick what 3 members of your team will be competing to take home that very important first win of the tournament! More info will follow as soon as the RetroOlympics chat channels are up!

## RA Teams
### RAEvents Team
There's a new team in town. The RAEvents team has been formed with the team responsibilities consisting of approving new events, helping run/organize events and hosting events that do not have a dedicated host.

Current team members:
- {% rauserpic AuburnRDM %}
- {% rauserpic Bendyhuman %}
- {% rauserpic FBernkastelKues %}
- {% rauserpic JAM %}
- {% rauserpic Pudpod %}
- {% rauserpic Snow %}
- {% rauserpic StingX2 %}
- {% rauserpic televandalist %}

If you would like to contact the team you can send message to {% rauserpic RAEvents %}.

### RANews Team
{% rauserpic TimeCrush %} has joined the RANews team, brining a new article series to the community. Check out [It's a Long Way to the Top](./long-way-to-the-top.html) debuting in this issue.

## Site Updates
### RAWeb v1.91.2
- Change Achievement Distribution graph to bar chart by [@Jamiras](https://github.com/Jamiras) in #1113 [#1113](https://github.com/RetroAchievements/RAWeb/pull/1113)
- Fix white points calculation on daily/weekly leaderboard by [@Tsearo](https://github.com/Tsearo) in #1102 [#1102](https://github.com/RetroAchievements/RAWeb/pull/1102)
- Fix hardcore indicator on player history page by [@Jamiras](https://github.com/Jamiras) in #1107 [#1107](https://github.com/RetroAchievements/RAWeb/pull/1107)
- Fix first mutual follower showing follow link by [@Jamiras](https://github.com/Jamiras) in #1108 [#1108](https://github.com/RetroAchievements/RAWeb/pull/1108)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/1.91.2)

### RAWeb v2.0.0
- This is an infrastructure release. There are several visual changes, but no new features.
- While this will enable development of some features that have always been v2+, none are currently planned or prioritized. They will come when they are ready.
- Let us know if you experience any problems.

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/2.0.0)

### RAWeb v2.0.1
- Lazily load tooltip cards by [@luchaos](https://github.com/luchaos) in [#1142](https://github.com/RetroAchievements/RAWeb/pull/1142)
- Cache currently active on front page by [@luchaos](https://github.com/luchaos) in [#1143](https://github.com/RetroAchievements/RAWeb/pull/1143)
- Use standard colors for comments widget by [@Jamiras](https://github.com/Jamiras) in [#1145](https://github.com/RetroAchievements/RAWeb/pull/1145)
- Show decimal tooltip for hex values when viewing trigger by [@Jamiras](https://github.com/Jamiras) in [#1140](https://github.com/RetroAchievements/RAWeb/pull/1140)
- Fix resetting progress from achievement page by [@Jamiras](https://github.com/Jamiras) in [#1117](https://github.com/RetroAchievements/RAWeb/pull/1117)
- Fix resetting progress from game page by [@Jamiras](https://github.com/Jamiras) in [#1120](https://github.com/RetroAchievements/RAWeb/pull/1120)
- Fix points not being returned by API_GetUserRankAndScore by [@Jamiras](https://github.com/Jamiras) in [#1118](https://github.com/RetroAchievements/RAWeb/pull/1118)
- Fix news image header path by [@luchaos](https://github.com/luchaos) in [#1119](https://github.com/RetroAchievements/RAWeb/pull/1119)
- Fix Mastered being displayed when 99.5+% of achievements earned, but not 100% by [@Jamiras](https://github.com/Jamiras) in [#1121](https://github.com/RetroAchievements/RAWeb/pull/1121)
- Fix server error loading profile when user has hardcore unlocks for a game but not softcore unlocks by [@Jamiras](https://github.com/Jamiras) in [#1126](https://github.com/RetroAchievements/RAWeb/pull/1126)
- Capture timing information for non-laravel queries by [@Jamiras](https://github.com/Jamiras) in [#1127](https://github.com/RetroAchievements/RAWeb/pull/1127)
- Fix exception processing truncated trigger by [@Jamiras](https://github.com/Jamiras) in [#1131](https://github.com/RetroAchievements/RAWeb/pull/1131)
- Return 404 for dev stats of deleted user by [@Jamiras](https://github.com/Jamiras) in [#1132](https://github.com/RetroAchievements/RAWeb/pull/1132)
- Prevent 500 response when attributed developer was hard deleted by [@Jamiras](https://github.com/Jamiras) in [#1133](https://github.com/RetroAchievements/RAWeb/pull/1133)
- Prevent exception visiting game compare page before playing any games by [@Jamiras](https://github.com/Jamiras) in [#1134](https://github.com/RetroAchievements/RAWeb/pull/1134)
- Fix navigation when search string contains apostrophe by [@Jamiras](https://github.com/Jamiras) in [#1141](https://github.com/RetroAchievements/RAWeb/pull/1141)
- Fix 'Malformed UTF-8' error when rich presence truncated mid UTF-8 character by [@Jamiras](https://github.com/Jamiras) in [#1144](https://github.com/RetroAchievements/RAWeb/pull/1144)
- Handle missing referers in wiki edit redirects by [@luchaos](https://github.com/luchaos) in [#1136](https://github.com/RetroAchievements/RAWeb/pull/1136)
- Use cachable configuration values instead of environment variables by [@luchaos](https://github.com/luchaos) in [#1139](https://github.com/RetroAchievements/RAWeb/pull/1139)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/2.0.1)

## Developer Compliance

- [Bunny Milionaire](https://retroachievements.org/achievement/73123) requirement updated from 1,000,000 to 500,000 points.
- [Dragon Quest VIII: Journey of the Cursed King [Subset - Monster Loot Ledger]](https://retroachievements.org/game/20407) approved.
- [Tony Hawk's Underground [Subset - RAdical Custom Goals/Gaps]](https://retroachievements.org/game/20476) approved.

## DevQuest

### DevQuest Awards

<a class="gameicon-link" href="https://retroachievements.org/game/15940" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044438.png" alt="[DevQuest 001] Ticket Massacre"> <span>[DevQuest 001] Ticket Massacre</span></a>
- {% rauserpic zxmega %}

<a class="gameicon-link" href="https://retroachievements.org/game/15952" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/043647.png" alt="[DevQuest 004] Veteran Deveoper"> <span>[DevQuest 004] Veteran Developer</span></a>
- {% rauserpic Searo %}

<a class="gameicon-link" href="https://retroachievements.org/game/15952" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044441.png" alt="[DevQuest 005] Trigger Happy"> <span>[DevQuest 005] Trigger Happy</span></a>
- {% rauserpic WanderingHeiho %}

<a class="gameicon-link" href="https://retroachievements.org/game/15907" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/045565.png" alt="[DevQuest 006] The Unwanted"> <span>[DevQuest 006] The Unwanted</span></a>
  - {% rauserpic Bryan1150 %} for [Android Assault: The Revenge of Bari-Arm (Sega CD)](https://retroachievements.org/game/16040)

<a class="gameicon-link" href="https://retroachievements.org/game/17758" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/046249.png" alt="[DevQuest 007] Most Wanted"> <span>[DevQuest 007] Most Wanted</span></a>
  - {% rauserpic Anic %} for [God of War: Chains of Olympus (Playstation Portable)](https://retroachievements.org/game/3537)

<a class="gameicon-link" href="https://retroachievements.org/game/15918" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/047727.png" alt="[DevQuest 008] World Traveler"> <span>[DevQuest 008] World Traveler</span></a>
  - {% rauserpic timenoe %} for [Umihara Kawase Shun: Second Edition (Playstation)](https://retroachievements.org/game/14380) & [Chocobo no Fushigi na Dungeon \| Chocobo's Dungeon (PlayStation)](https://retroachievements.org/game/7300)
  - {% rauserpic Cadaxar %} for [Ys: Ancient Ys Vanished (NES)](https://retroachievements.org/game/4705) & [Ayakashi no Shiro (Game Boy)](https://retroachievements.org/game/4088) & [Wizardry Scenario 1 - Proving Grounds of the Mad Overlord (WonderSwan)](https://retroachievements.org/game/14595)
  - {% rauserpic wolfman2000 %} for [Dance Dance Revolution 4th Mix (PlayStation)](https://retroachievements.org/game/19153) & [Beatmania GB - GotchaMix 2 (GBC)](https://retroachievements.org/game/4526)

<a class="gameicon-link" href="https://retroachievements.org/game/1280" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/049821.png" alt="[DevQuest 011] Happy Birthday RA!"> <span>[DevQuest 011] Happy Birthday RA!</span></a>
  - {% rauserpic ladynadiad %} for [Sword of Vermilion (Mega Drive)](https://retroachievements.org/game/4466)
  - {% rauserpic xnaivx %} for [Terminator, The (Mega Drive)](https://retroachievements.org/game/544)

<a class="gameicon-link" href="https://retroachievements.org/game/795" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/057676.png" alt="[DevQuest 013] complete.me"> <span>[DevQuest 013] complete.me</span></a>
  - {% rauserpic SlashTangent %} for [F-1 World Grand Prix (Nintendo 64)](https://retroachievements.org/game/10462), [California Speed (Nintendo 64)](https://retroachievements.org/game/12815) & [Banjo Kazooie (Nintendo 64)](https://retroachievements.org/game/10210)

<a class="gameicon-link" href="https://retroachievements.org/game/862" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/057070.png" alt="[DevQuest 014] Laudable Leaderboards"> <span>[DevQuest 014] Laudable Leaderboards</span></a>
 - {% rauserpic kmpers %} 

<a class="gameicon-link" href="https://retroachievements.org/game/809" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/058480.png" alt="[DevQuest 016] Wish This Set"> <span>[DevQuest 016] Wish This Set</span></a>
  - {% rauserpic Bryan1150 %} for [Meteos (Nintendo DS)](https://retroachievements.org/game/9462)
  - {% rauserpic Tayadaoc %} for [Monkey Puncher (Game Boy Color)](http://retroachievements.org/game/4192)
  
  
### Vet Developer Progress


#### [Vet Dev III](https://retroachievements.org/achievement/153268)

|{% rauserpic Infernox %}||



#### [Vet Dev IX](https://retroachievements.org/achievement/153271)

| {% rauserpic kmpers %} | {% rauserpic Searo %} | {% rauserpic xnaivx %}|