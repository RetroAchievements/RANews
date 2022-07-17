---
issue: 2022-07
order: 202207-12
layout: article
author: RANews
title: Community News
toc: true
---

# Developer Set Claim System
With [RAWeb version 1.89](https://github.com/RetroAchievements/RAWeb/releases/tag/1.89.0) we are happy to announce the site implementation of a set claim system. With this update developers are able to make and manage their claims all on site. We've already imported all the claims that we are currently tracking (over 6,000), so any claim that has been made should already be visible on site. There are several new features that all users can utilize. Including viewing all the claim information with various filtering and sorting options, viewing claim information on a game page and userpage, seeing which of the most requested sets have active claims on them, and more.

More information can be found [here](https://retroachievements.org/viewtopic.php?t=17176).

# RATools Updates
##  RATools Version 1.9.0
- upgrade from .NET Framework 4.6 to .NET Core 6.0
- add forward/backward navigation via mouse4/mouse5 buttons
- use APIs for Analysis dialogs (fixes failures caused by scraping website when site changes)
  - added Web API Key field to settings dialog
- add User Mastery analysis dialog (warning: fetches game stats for every game user has mastered)
- add Unlock Distance analysis dialog
- add Rich Presence to the Update Local dialog
- update Rich Presence size warning to 64KB
- fix issue dumping script with `measured(tally(), when=...)` clause
- fix issue dumping script with `tally(1, ...)` clause
- fix issue dumping script when local leaderboards are present
- fix issue dumping leaderboard value with AddAddress and non-integer multiplier
- fix issue generating rich presence when lookup is hardcoded for value=0
- fix issue pasting multiline text into a line with an error indicator
- fix error generating leaderboard value with `measured(..., when=repeated() && never())`
- fix error using multiple `never`s in a single `repeated` clause
- fix whitespace not being required after `else` keyword

[Full Changelog](https://github.com/Jamiras/RATools/releases/tag/v1.9.0)

##  RATools Version 1.9.1
- show error when server returns non-JSON authentication error
- improve diff logic for rich presence lookups
- fix optimization of division by self in leaderboard value
- fix line endings causing rich presence to appear modified
- fix back navigation when an asset has changed

[Full Changelog](https://github.com/Jamiras/RATools/releases/tag/v1.9.1)

# Site Updates
## RAWeb Version 1.87
- Allow viewing recent forum posts from a user by [@Jamiras](https://github.com/Jamiras) in [#1004](https://github.com/RetroAchievements/RAWeb/pull/1004)
- Add first/last links to paginator by [@Jamiras](https://github.com/Jamiras) in [#996](https://github.com/RetroAchievements/RAWeb/pull/996)
- Use paginator for ticket list by [@Jamiras](https://github.com/Jamiras) in [#997](https://github.com/RetroAchievements/RAWeb/pull/997)
- Allow tab delimiter in admin tools by [@luchaos](https://github.com/luchaos) in [#1001](https://github.com/RetroAchievements/RAWeb/pull/1001)
- Add flag to return ticket details when calling API\_GetTicketData with g parameter by [@Jamiras](https://github.com/Jamiras) in [#998](https://github.com/RetroAchievements/RAWeb/pull/998)
- Add DateModified in API\_GetGameList query by [@Jamiras](https://github.com/Jamiras) in [#1005](https://github.com/RetroAchievements/RAWeb/pull/1005)
- Add ForumTopicID in API\_GetGameList query by [@Jamiras](https://github.com/Jamiras) in [#1011](https://github.com/RetroAchievements/RAWeb/pull/1011)
- Fix broken dev page when first achievement is 0 pointer by [@Tsearo](https://github.com/Tsearo) in [#989](https://github.com/RetroAchievements/RAWeb/pull/989)
- Fix sanitized title/descriptions from falsely showing differences by [@Tsearo](https://github.com/Tsearo) in [#990](https://github.com/RetroAchievements/RAWeb/pull/990)
- Fix floats from breaking stored hits in mem explained view by [@Tsearo](https://github.com/Tsearo) in [#992](https://github.com/RetroAchievements/RAWeb/pull/992)
- Fix relations widget sizing for long title by [@MrOwnership](https://github.com/MrOwnership) in [#999](https://github.com/RetroAchievements/RAWeb/pull/999)
- Eliminate RA\_User cookie by [@Jamiras](https://github.com/Jamiras) in [#994](https://github.com/RetroAchievements/RAWeb/pull/994)
- Document remaining public APIs by [@Jamiras](https://github.com/Jamiras) in [#991](https://github.com/RetroAchievements/RAWeb/pull/991)
- Remove "How do I play?" tutorial widget from game details page by [@luchaos](https://github.com/luchaos) in [#1000](https://github.com/RetroAchievements/RAWeb/pull/1000)
- Several maintenance/cleanup and refactorings by [@luchaos](https://github.com/luchaos) in [#967](https://github.com/RetroAchievements/RAWeb/pull/967), [#995](https://github.com/RetroAchievements/RAWeb/pull/995), [#1002](https://github.com/RetroAchievements/RAWeb/pull/1002), [#1003](https://github.com/RetroAchievements/RAWeb/pull/1003), and [#1008](https://github.com/RetroAchievements/RAWeb/pull/1008)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/1.87.0)

## RAWeb Version 1.87.1
- Fix various errors and warnings by [@luchaos](https://github.com/luchaos) in [#1012](https://github.com/RetroAchievements/RAWeb/pull/1012)
- fix leaderboard creation permission check by [@Jamiras](https://github.com/Jamiras) in [#1013](https://github.com/RetroAchievements/RAWeb/pull/1013)
- Update dependencies by [@luchaos](https://github.com/luchaos) in [#1014](https://github.com/RetroAchievements/RAWeb/pull/1014)
- Shortcode parser fixes by [@luchaos](https://github.com/luchaos) in [#1015](https://github.com/RetroAchievements/RAWeb/pull/1015)
- Authenticated user in form request only by [@luchaos](https://github.com/luchaos) in [#1017](https://github.com/RetroAchievements/RAWeb/pull/1017)
- Add directory separator agnostic assertPathEquals() to tests by [@luchaos](https://github.com/luchaos) in [#1021](https://github.com/RetroAchievements/RAWeb/pull/1021)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/1.87.1)

## RAWeb Version 1.88
- Do not open links in new tabs by default by [@luchaos](https://github.com/luchaos) in [#1022](https://github.com/RetroAchievements/RAWeb/pull/1022)
- move PermissionsToString into Permissions enum by [@Jamiras](https://github.com/Jamiras) in [#1018](https://github.com/RetroAchievements/RAWeb/pull/1018)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/1.88.0)

## RAWeb Version 1.89
- Set claims by [@MrOwnership](https://github.com/MrOwnership) in [#1027](https://github.com/RetroAchievements/RAWeb/pull/1027)
- Redesigned search bar by [@Krylan](https://github.com/Krylan) in [#1023](https://github.com/RetroAchievements/RAWeb/pull/1023)
- Add colors to status widget by [@Jamiras](https://github.com/Jamiras) in [#1030](https://github.com/RetroAchievements/RAWeb/pull/1030)
- Add audit comments for game modifications by [@Jamiras](https://github.com/Jamiras) in [#1019](https://github.com/RetroAchievements/RAWeb/pull/1019)
- Include separate values for hardcore in API\_GetUserRecentlyPlayedGames response by [@Jamiras](https://github.com/Jamiras) in [#1038](https://github.com/RetroAchievements/RAWeb/pull/1038)
- Improve merging of Hacks hubs into Publisher field by [@Jamiras](https://github.com/Jamiras) in [#1029](https://github.com/RetroAchievements/RAWeb/pull/1029)
- Fix client error when unlocking previously earned achievements by [@Jamiras](https://github.com/Jamiras) in [#1031](https://github.com/RetroAchievements/RAWeb/pull/1031)
- Fix mature content user preference not saving by [@Jamiras](https://github.com/Jamiras) in [#1035](https://github.com/RetroAchievements/RAWeb/pull/1035)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/1.89.0)

# Quality Assurance
- Sets approved for DQ2 qualification:
  - [Game & Watch Gallery 4](https://retroachievements.org/game/766)
  - [Gauntlet Legends](https://retroachievements.org/game/10268)
  - [Mortal Kombat II](https://retroachievements.org/game/12737)
- Save protection added to:
  - [Rupee Hoarder](https://retroachievements.org/achievement/962)
  - [Rupee Hunter](https://retroachievements.org/achievement/960)
  - [Rupee Collector](https://retroachievements.org/achievement/961)

# Developer Compliance
- Subset approved for [Paladin's Quest [Subset - No Mercenaries]](https://retroachievements.org/game/19856).
- Subset approved for [Tokimeki Memorial: Densetsu no Ki no Shita de](https://retroachievements.org/game/3913) for Single-Session Confessions.
- Subset denied for [TimeSplitters 2](https://retroachievements.org/game/2624). Achievement in question were marked necessary for core rather than subset.
- Subset denied for [Daytona USA](https://retroachievements.org/game/14555). Achievement in question were marked necessary for core rather than subset.
- [Crook or Fair](https://retroachievements.org/achievement/16202) demoted from [Life Force](https://retroachievements.org/game/1800) and EU hash unlinked.
- [Syd of Valis](https://retroachievements.org/game/4467) approved for DQ13 eligibility.
- [Crash Bandicoot](https://retroachievements.org/game/10434), [Crash Bandicoot 2: Cortex Strikes Back](https://retroachievements.org/game/10432) & [Crash Bandicoot 3: Warped](https://retroachievements.org/game/10433) not approved for DQ13. Achievements for bosses which covers progression and individual levels are not necessary.
- [Sharpshooter](https://retroachievements.org/achievement/156745) & [Firing My Lasers!](https://retroachievements.org/achievement/156746) updated by {% rauser voiceofautumn %} to have a more clear title and description.
- Closed Tickets:
  - [48444](https://retroachievements.org/ticketmanager.php?i=48444)
  - [48445](https://retroachievements.org/ticketmanager.php?i=48445)


# DevQuest
## DevQuest Awards
<a class="gameicon-link" href="https://retroachievements.org/game/15940" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044438.png" alt="[DevQuest 001] Ticket Massacre"> <span>[DevQuest 001] Ticket Massacre</span></a>
- {% rauserpic Bartis1989 %}


<a class="gameicon-link" href="https://retroachievements.org/game/15957" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044439.png" alt="[DevQuest 002] Summer Set Repair"> <span>[DevQuest 002] Summer Set Repair</span></a>
- {% rauserpic voiceofautumn %} for [Yu Yu Hakusho: Ghost Files - Spirit Detective](https://retroachievements.org/game/5089), [Dragon Ball Z 2: Super Battle](https://retroachievements.org/game/12741) & [Art of Fighting \| Ryuuko no Ken](https://retroachievements.org/game/184)
- {% rauserpic xnaivx %} for [Golden Axe](https://retroachievements.org/game/87), [Fist of the North Star: 10 Big Brawls for the King of the Universe](https://retroachievements.org/game/3615) & [Ridge Racer Revolution](https://retroachievements.org/game/5332)



<a class="gameicon-link" href="https://retroachievements.org/game/15953" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044440.png" alt="[DevQuest 003] Singles In Your Area"> <span>[DevQuest 003] Singles In Your Area</span></a>
- {% rauserpic malasdair %}


  <a class="gameicon-link" href="https://retroachievements.org/game/15952" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044441.png" alt="[DevQuest 005] Trigger Happy"> <span>[DevQuest 005] Trigger Happy</span></a>
- {% rauserpic voiceofautumn %}

<a class="gameicon-link" href="https://retroachievements.org/game/15907" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/045565.png" alt="[DevQuest 006] The Unwanted"> <span>[DevQuest 006] The Unwanted</span></a>
- {% rauserpic minibt %} for [Choplifter!](https://retroachievements.org/game/14261)
- {% rauserpic Maximdraco %} for [Artillery Duel](https://retroachievements.org/game/17275)


<a class="gameicon-link" href="https://retroachievements.org/game/17758" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/046249.png" alt="[DevQuest 007] Most Wanted"> <span>[DevQuest 007] Most Wanted</span></a>
- {% rauserpic Bryan1150 %} for [Kirby Mass Attack](https://retroachievements.org/game/14788)



<a class="gameicon-link" href="https://retroachievements.org/game/15918" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/047727.png" alt="[DevQuest 008] World Traveler"> <span>[DevQuest 008] World Traveler</span></a>
- {% rauserpic malasdair %} for [Gomola Speed (PC Engine)](https://retroachievements.org/game/17335) & [Cotton: Fantastic Night Dreams (Arcade)](https://retroachievements.org/game/11870)
- {% rauserpic siouxerskate %} for [Hydlide II: Shrine Of Darkness(PC8000/8800) ](http://retroachievements.org/game/14243) & [Grand Master (NES)](https://retroachievements.org/game/19886)
- {% rauserpic soltyd %} for [Pachinko Wars (SNES)](https://retroachievements.org/game/19860) & [Pachio-kun Special (SNES)](https://retroachievements.org/game/19886)
- {% rauserpic KingS1zzle %} for [Rhythm Tengoku (Arcade)](https://retroachievements.org/game/15972) & [Pocket MuuMuu (PlayStation)](https://retroachievements.org/game/17569)


<a class="gameicon-link" href="https://retroachievements.org/game/15937" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/048656.png" alt="[DevQuest 009] Launch Party!"> <span>[DevQuest 009] Launch Party!</span></a>
- {% rauserpic PsyHunter29 %} for [Dance Dance Revolution: 2nd Mix - Dreamcast Edition](https://retroachievements.org/game/19421)
- {% rauserpic Bryan1150 %} for [Future Avoid](https://retroachievements.org/game/19335)



<a class="gameicon-link" href="https://retroachievements.org/game/1280" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/049821.png" alt="[DevQuest 011] Happy Birthday RA!"> <span>[DevQuest 011] Happy Birthday RA!</span></a>
- {% rauserpic PsyHunter29 %} for [T2 - The Arcade Game (Mega Drive)](https://retroachievements.org/game/2400)



<a class="gameicon-link" href="https://retroachievements.org/game/795" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/057676.png" alt="[DevQuest 013] complete.me"> <span>[DevQuest 013] complete.me</span></a>
- {% rauserpic voiceofautumn %} for [Yoshi](https://retroachievements.org/game/743),  [Street Fighter II: Turbo (SNES)](https://retroachievements.org/game/648) & [WarioWare, Inc.: Mega Microgames!](https://retroachievements.org/game/802)


<a class="gameicon-link" href="https://retroachievements.org/game/862" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/057070.png" alt="[DevQuest 014] Laudable Leaderboards"> <span>[DevQuest 014] Laudable Leaderboards</span></a>
- {% rauserpic deng %}
- {% rauserpic pinguupinguu %}
- {% rauserpic voiceofautumn %}
- {% rauserpic wolfma2000 %}


<a class="gameicon-link" href="https://retroachievements.org/game/809" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/058480.png" alt="[DevQuest 016] Wish This Set"> <span>[DevQuest 016] Wish This Set</span></a>
- {% rauserpic Cadaxar %}
- {% rauserpic DoctorV %}
- {% rauserpic timenoe %}
