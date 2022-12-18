---
issue: 2022-12
order: 202212-12
layout: article
author: RANews
title: Community News
toc: true
---

## Devember 2022

It's that time of year where we unite to destroy tickets

Devember🍂 2022, the annualy ticket clearing event, will run until December 23rd at 23:59 GMT.

Once again, both Developers and Non-Developers can participate. Players can provide saves/states to help knock out the tickets!

All necessary info can be found in the `#🍂devember-2022` and `#🍂devember-submissions` Discord channles.

### Quick Stats
- 16 participants have qualified for the hardcore badge!
- 9 participants have qualified for the softcore badge!
- 18 participants are still working toward a badge! (a lot of them are close thanks to the community bonuses)
- 111 Dev Wheel of Doom™️ challenges have been completed!
- 62 saves/states have been submitted to help clear out tickets!

### Community Bonuses Applied
- 500 Total Tickets Resolved (20 points) (Goal reached on Nov. 22nd)
- All Tickets from 2020 Resolved (15 points) (Goal reached on Nov. 26th)
- 1000 Total Tickets Resolved (50 points) (Goal reached on Dec. 1st)

### Community Bonuses To Go
- All Mega Drive Tickets (we're at 83/122, 10 points)
- All Tickets from 2021 Resolved (we're at 189/293, 20 points)
- All Early Set Tickets (we're at 72/86, 10 points)

Please remember that the above points only apply to those who are actively participating

### Hardcore Badge Requirements
Earn at least 150 points during the event and complete at least three Dev Wheel of Doom™️ challenges

### Softcore Badge Requirements
Earn at least 100 points during the event and complete at least one Dev Wheel of Doom™️ challenge

## Retro Olympics 2022

<figure style="text-align:center;float:right;width:50%;height:50%;margin-inline-start:0px;margin-inline-end:30px;">
<img src="img/RetroOlympics.png" width="256" height="256">
<figcaption></figcaption>
</figure>

Join in on the Retro Olympics fun, The live-streamed competition where tons of RA's strongest players are facing off against eachother today to defend the glory of their country & continent!

Twitch Stream:
- [English](https://www.twitch.tv/retroolympics)
- [Portuguese](https://www.twitch.tv/retroolympicsbr)

New Retro Olympics Webiste in the making [here](http://retroolympics.org/).

All information you need will always be available in the Retro Olympics 2022 Schedule, available [here](https://docs.google.com/spreadsheets/d/16VsoyJW8DG2RB4r3MoGHOz-rqZyZ3-EjGk7ITOxUc5w/edit?usp=sharing).

## RA Minecraft
RetroAchievement now has an official Minecraft server where you build anything you want in the most popular sandbox game ever created.

The server can be accessed at: `mc.retroachievements.org:25588`

If you would like access to the server please contact:<br>
{% rauserpic Scott %}, {% rauserpic SporyTike %}, {% rauserpic luchaos %} or {% rauserpic BatFastardJordy %}


## Site Updates

### RAWeb v2.2.0
* Junior developers are now allowed to update game information, rich presence, and achievement order for games where they have an active new set claim by {% rauserpic MrOwnership %} in [#1211](https://github.com/RetroAchievements/RAWeb/pull/1211)
* Add explain blocks for leaderboards by {% rauserpic Jamiras %} in [#1216](https://github.com/RetroAchievements/RAWeb/pull/1216)
* Add Type filter to search page by {% rauserpic Jamiras %} in [1195](https://github.com/RetroAchievements/RAWeb/pull/1195)
* Eliminate ticket karma by {% rauserpic Jamiras %} in [#1203](https://github.com/RetroAchievements/RAWeb/pull/1203)
* Only show recent players from the last six months on game pages by {% rauserpic Jamiras %} in [1197](https://github.com/RetroAchievements/RAWeb/pull/1197)
* Separate PC Engine CD from PC Engine by {% rauserpic televandalist %} in [1129](https://github.com/RetroAchievements/RAWeb/pull/1129)
* Restore Set Exists marker on All User Set Requests page by {% rauserpic Jamiras %} in [1193](https://github.com/RetroAchievements/RAWeb/pull/1193)
* Fix display issue when embedding game and achievement with same ID in same page by {% rauserpic Jamiras %} in [1198](https://github.com/RetroAchievements/RAWeb/pull/1198)
* Fix notes not showing up for PS2 achievement definitions by {% rauserpic Jamiras %} in [#1210](https://github.com/RetroAchievements/RAWeb/pull/1210)
* Fix completion badge not being awarded if last unlock was hardcore by {% rauserpic Jamiras %} in [1196](https://github.com/RetroAchievements/RAWeb/pull/1196)
* Fix rank calculation for lower is better leaderboard when rank is shared by {% rauserpic Jamiras %} in [#1202](https://github.com/RetroAchievements/RAWeb/pull/1202)
* Fix player activity not showing up when invalid by {% rauserpic Jamiras %} in [#1204](https://github.com/RetroAchievements/RAWeb/pull/1204)
* Fix hardcore border not showing on game compare page by {% rauserpic Jamiras %} in [#1218](https://github.com/RetroAchievements/RAWeb/pull/1218)
* Fix RSS feeds date, strip HTML tags, add guid by {% rauserpic Krylan %} in [#1223](https://github.com/RetroAchievements/RAWeb/pull/1223)
* Prevent creating account with invalid username by {% rauserpic Jamiras %} in [#1206](https://github.com/RetroAchievements/RAWeb/pull/1206)
* Prevent exception trying to create a ticket when not logged in by {% rauserpic Jamiras %} in [1190](https://github.com/RetroAchievements/RAWeb/pull/1190)
* Prevent exception trying to return data for non-existent game by {% rauserpic Jamiras %} in [1191](https://github.com/RetroAchievements/RAWeb/pull/1191)
* Prevent exception calling RecentlyPlayedGames without a user by {% rauserpic Jamiras %} in [#1205](https://github.com/RetroAchievements/RAWeb/pull/1205)
* Don't try to send email to deleted user when closing ticket by {% rauserpic Jamiras %} in [#1213](https://github.com/RetroAchievements/RAWeb/pull/1213)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/compare/2.1.0...2.2.0)

## Emulator Updates

### RAIntegration v1.1.0
- Support for indirect code notes (code notes derived from a note on a pointer)
- If the first line of a code note contains the keyword "pointer", then any following line that starts with a plus (no indent) immediately followed by a number (hexadecimal [0x prefix] or decimal, no whitespace) is treated as an indirect code note. After the number, any number of whitespace characters and/or a single non-alphanumeric character separate the indirect note from the offset. Following lines that don't start with a plus are also considered part of the indirect note. Some examples are shown [here](https://github.com/RetroAchievements/RAIntegration/pull/902#issuecomment-1180878607).
- Support for local code notes
  - Allows making temporary notes while trying to narrow down addresses
  - Fixes loss of note-in-progress if selected address is changed
  - Note modifications are kept locally until published to the server
  - Unpublished notes will appear in red in the code notes window
  - Notes are deleted by reverting (if not published) or by setting to blank and publishing
- Support for offline development (if the game was previously loaded in online mode)
  - Offline mode is only activated if the server cannot be contacted during login.
  - It's not meant to be something a developer can just activate whenever they want.
  - Changes will be saved to local file (XXX-User.txt)
  - Publishing is disabled
  - Achievements unlocked in offline mode will not be sync'ed to the server, and will not be eligible for manual unlocks.
- Add Open All and Code Notes items to RetroAchievements menu
- Add MBF32 LE memory size
- Add BitCount search type
- Add XOR (^) AddSource/SubSource modifier
- Add ASCII as selectable size in bookmarks window
- Add warning when serialized size exceeds limit
- Add Export button to search results
- Automatically change asset filter to local if local assets exist and no published assets exist
- Changed points field on achievement editor to dropdown
- Allow Invert to be selected for non-value logic
- Allow rich presence monitor to be resized
- Fix app title being updated on login/logout when not using `RA_UpdateAppTitle`
- Fix search results being cleared when switching between disks of a multi-disk game
- Fix crash enabling highlights without a loaded asset
- Fix comparison against initial values for aligned searches
- Fix redundancy warning between trigger and non-trigger conditions
- Fix decoding of denormalized floats (values where exponent is 2^-127)

[Full Changelog](https://github.com/RetroAchievements/RAIntegration/releases/tag/RAIntegration.1.1.0)

### RALibretro v1.4.0
- support for identifying CHD-formatted CDs
- ability to launch game using command line arguments
- cascade Select Core menu if it contains more than 20 systems
- attempt to report error from core when savestate loading fails
- separate PCEngine from PCEngine CD
- enable FreeChaF core for Fairchild Channel F
- enable SameDuck core for MegaDuck

[Full Changelog](https://github.com/RetroAchievements/RALibretro/releases/tag/1.4.0)

## RATools Updates
- new internal representation of logic
  - small performance boost due to not having to reevaluate on each usage
  - allows for more optimization opportunities<br>
    **NOTE**: this causes errors to be generated for several previously allowed syntaxes:
    - Implicit `always_true()` and `always_false()` are no longer supported in logic chains. Logic such as: `0=1 && never(byte(0x1234) == 3)` will now collapse to `false` as `0=1` can never be true. Script authors must replace the `0=1` with an `always_false()` to preserve the logic in the output.
    - Memory addresses can no longer be compared to `true` or `false`. Compare to `1` or `0` instead.
    - `always_true()` and `always_false()` are no longer supported for leaderboard values. use `measured(repeated(0, always_true()))` and `0` instead.
    - Integer division is no longer implicitly converted to floats for leaderboard values: `byte(0x1234) * 3 / 2` will no longer be automatica0lly converted to `byte(0x1234) * 1.5`. use `byte(0x1234) * 3.0 / 2` for automatic conversion.
    - Calling `repeated` or `tally` with a count of 0 is no longer supported outside of a `measured` clause of a value expression. Doing so implies an unbounded hit requirement which cannot be reached and is equivalent to `always_false()`. Using these to generate an AndNext/OrNext chain was not intended. If you absolutely want to prevent the OrNext from being converted to alt groups use the `__ornext(condition)` function. If you have a valid reason for forcing an AndNext chain let me know.
    - `measured(A && B)` will now generate an error instead of just setting the Measured flag on B. The actual logic it previously generated was `A && measured(B)` or `measured(repeated(0, A && B))` depending on whether it was being used in a trigger expression or a value expression.
    - `once(A && once(B))` will now keep a separate hit count for B and for the entire clause by reordering the conditions or injecting an `always_false()` condition to hold the total count.
    - `once(unless(A))` will now generate an error. use `unless(once(A))` or `disable_when(A)` instead. Similarly, `unless` cannot be used inside `repeated` or `tally` clauses.
    - `repeated(10, trigger_when(A))` will now generate an error. use `trigger_when(repeated(10, A))` instead.
    - `repeated(10, measured(A))` will now generate an error. use `measured(repeated(10, A))` instead.
- support for local code notes
- add Progression analysis dialog (open from Game Stats dialog)
- add ability to autogenerate function names in New Script dialog
- fix `measured(bitcount(X) == 8)` being converted to `measured(byte(X) == 255)`
- fix `measured(X + 100 > 200)` being converted to `measured(X > 100)`
- fix `float(X) < 0` being converted to `always_false()`
- fix `never` in `tally` clause being replaced with AndNext
- fix Copy to Clipboard not working on Rich Presence and Leaderboard title/description
- fix duplicating of file extension for local badge images
- fix dumping Rich Presence with measured value in display string
- fix viewing Rich Presence diff where lookup was removed


[Full Changelog](https://github.com/Jamiras/RATools/releases/tag/v1.10.0)

## Discord Updates
- `art-requests` channel has been updated to be forum based to make it easier for the art team to organize, track and discuss art requests.
- `rapatches` forum channel has been created allowing users to request patches to add to the [RAPatches GitHub](https://github.com/RetroAchievements/RAPatches), help creating or converting patches, general reports, etc.
- `site-feedback` channel created for quick feedback. The official [RAWeb GitHub](https://github.com/RetroAchievements/RAWeb) should still be used for more in depth discussions regarding site issues and enhancements.
- `minecraft` channel created to discussion everything regarding the RA Minecraft server.
- `duckstation` created to help test DuckStation standalone compatibility.

## Developer Compliance

Junior Developers permissions expanded if they have an active primary new set claim, allowing them to do the following:
- Update game page information (Developer, Publisher, Genre, & First Released)
- Update game page images (Icon, Title, In-Game, Boxart)
- Update Rich Presence script
- Update achievement ordering

Code of Conduct Updates
- [Set Plagiarism](https://docs.retroachievements.org/Set-Plagiarism/) rules introduced
- Reservation Renewals
  - Added details about the progress reports requirements.
  - Adjusted of the cooldown after denied progress reports (from 3 months to 1 month) to align with the "drop and resume before 1 month" rule.
  - Added the requirement to post progress reports after every renewal if an 1-month cooldown happened.

Approved Subsets
- [~Hack~ Legend of Zelda, The: Dungeon Rush (Nintendo 64)](https://retroachievements.org/game/19811)
- [Grand Theft Auto: Vice City [Subset - Bonus - Chaos Edition] (PlayStation 2)](https://retroachievements.org/game/20406)
- ~Hack~ Mega Man X: Hard Type
- Tony Hawk's Pro Skater 4 (PlayStation 2) [Subset - Zero Stats]
- Dragon Quest VIII: Journey of the Cursed King [Subset - Master Monster Masher]
- Tekken: Dark Resurrection [Subset - Dark Lord] (PlayStation Portable)
- Monster Hunter [Subset - Crafting] (PlayStation 2)

## DevQuest

### DevQuest Awards

<a class="gameicon-link" href="https://retroachievements.org/game/15940" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044438.png" alt="[DevQuest 001] Ticket Massacre"> <span>[DevQuest 001] Ticket Massacre</span></a>
- {% rauserpic siouxerskate %}
- {% rauserpic TheMysticalOne %}
- {% rauserpic Tayadaoc %}
- {% rauserpic StingX2 %}
- {% rauserpic Bryan1150 %}
- {% rauserpic FBernkastelKues %}

<a class="gameicon-link" href="https://retroachievements.org/game/15953" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044440.png" alt="[DevQuest 003] Singles In Your Area"> <span>[DevQuest 003] Singles In Your Area</span></a>
- {% rauserpic deng %}
- {% rauserpic Bryan1150 %}

<a class="gameicon-link" href="https://retroachievements.org/game/15947" target="_blank" rel="noopener"> <img class="gameicon" src="https://media.retroachievements.org/Badge/172011.png" alt="[DevQuest 004] Veteran Developer"> <span>[DevQuest 004] Veteran Developer</span></a>
- {% rauserpic Delmaru %}

<a class="gameicon-link" href="https://retroachievements.org/game/15952" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/044441.png" alt="[DevQuest 005] Trigger Happy"> <span>[DevQuest 005] Trigger Happy</span></a>
- {% rauserpic kmpers %}
- {% rauserpic SnowPin %}

<a class="gameicon-link" href="https://retroachievements.org/game/15907" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/045565.png" alt="[DevQuest 006] The Unwanted"> <span>[DevQuest 006] The Unwanted</span></a>
  - {% rauserpic Darkc0m %} for [Die Hard Arcade \| Dynamite Deka (Saturn))](https://retroachievements.org/game/14570)
  - {% rauserpic WanderingHeiho %} for [Lode Runner (WonderSwan)](https://retroachievements.org/game/17250)

<a class="gameicon-link" href="https://retroachievements.org/game/17758" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/046249.png" alt="[DevQuest 007] Most Wanted"> <span>[DevQuest 007] Most Wanted</span></a>
  - {% rauserpic Darkc0m %} for [GG Aleste (Game Gear)](https://retroachievements.org/game/14300)
  - {% rauserpic Ghal416 %} for [Lunar: The Silver Star (Sega CD)](https://retroachievements.org/game/10563)
  - {% rauserpic TheJediSonic %} for [LEGO Racers (Nintendo 64)](https://retroachievements.org/game/10168)

<a class="gameicon-link" href="https://retroachievements.org/game/15918" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/047727.png" alt="[DevQuest 008] World Traveler"> <span>[DevQuest 008] World Traveler</span></a>
  - {% rauserpic Darkc0m %} for [Toujin Makyou Den: Heracles no Eikou (NES)](https://retroachievements.org/game/4966) & [Metal Max 3 (Nintendo DS)](https://retroachievements.org/game/21459)
  - {% rauserpic Jamiras %} for [Magic Knight Rayearth (SNES)](https://retroachievements.org/game/3206) & [Bushi Seiryuuden - Futari no Yuusha (SNES)](https://retroachievements.org/game/2714)

 <a class="gameicon-link" href="https://retroachievements.org/game/15937" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/048656.png" alt="[DevQuest 009] Launch Party!"> <span>[DevQuest 009] Launch Party!</span></a>
  - {% rauserpic Excessiveiser %} for [Madagascar (PlayStation 2)](https://retroachievements.org/game/19288)
  - {% rauserpic JAM %} for [Paqman (Arduboy)](https://retroachievements.org/game/8676)
  - {% rauserpic FRAN269 %} for [Britney's Dance Beat (PlayStation 2)](https://retroachievements.org/game/21481)
  - {% rauserpic gollawiz %} for [Okami (PlayStation 2)](https://retroachievements.org/game/3001)
  - {% rauserpic Griffin %} for [Ratatouille (PlayStation 2)](https://retroachievements.org/game/19033)

<a class="gameicon-link" href="https://retroachievements.org/game/1280" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/049821.png" alt="[DevQuest 011] Happy Birthday RA!"> <span>[DevQuest 011] Happy Birthday RA!</span></a>
  - {% rauserpic Falcus %} for [Cutie Suzuki no Ringside Angel (Mega Drive)](https://retroachievements.org/game/6816)
  - {% rauserpic Tayadaoc %} for [Ecco: The Tides Of  Time (Mega Drive)](https://retroachievements.org/game/1440)

<a class="gameicon-link" href="https://retroachievements.org/game/795" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/057676.png" alt="[DevQuest 013] complete.me"> <span>[DevQuest 013] complete.me</span></a>
  - {% rauserpic ladynadiad %} for [Final Fantasy IV Advance (Game Boy Advance)](https://retroachievements.org/game/763), [Valis (Mega Drive)](https://retroachievements.org/game/2367) & [Battle of Olympus, The (NES)](https://retroachievements.org/game/1571)

<a class="gameicon-link" href="https://retroachievements.org/game/809" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/053919.png" alt="[DevQuest 015] Console Conqueror"> <span>[DevQuest 015] Console Conqueror</span></a>
- {% rauserpic voiceofautumn %}

<a class="gameicon-link" href="https://retroachievements.org/game/15942" target="_blank" rel="noopener"> <img class="gameicon" src="https://media.retroachievements.org/Images/062544.png" alt="[DevQuest 017] RA World Cup"> <span>[DevQuest 017] RA World Cup</span></a>
  - {% rauserpic LogicalFallacy %} for [Golf (Virtual Boy)](https://retroachievements.org/game/14302) & [Final Lap Special: GT & Formula Machine (Wonderswan)](https://retroachievements.org/game/14960)
  - {% rauserpic voiceofautumn %} for [Street Hoop \| Street Slam \| Dunk Dream (Arcade)](https://retroachievements.org/game/12436) & [Pro Darts (Game Boy Color)](https://retroachievements.org/game/8757)
  - {% rauserpic SnowPin %} for [Tony Hawk's Pro Skater 3 (PlayStation 2)](https://retroachievements.org/game/2826) & [NHL 2K10 (PlayStation 2)](https://retroachievements.org/game/21463)


### Vet Developer Progress

<a class="gameicon-link" href="https://retroachievements.org/achievement/153266" target="_blank" rel="noopener"> <img class="gameicon" src="https://media.retroachievements.org/Badge/172011.png" alt="[DevQuest 004] Vet Dev I"> <span>[DevQuest 004] Vet Dev I</span></a>

- {% rauserpic ladynadiad %}
- {% rauserpic TheMysticalOne %}

<a class="gameicon-link" href="https://retroachievements.org/achievement/153270" target="_blank" rel="noopener"> <img class="gameicon" src="https://media.retroachievements.org/Badge/172011.png" alt="[DevQuest 004] Vet Dev IV"> <span>[DevQuest 004] Vet Dev IV</span></a>
- {% rauserpic ladynadiad %}
- {% rauserpic TheMysticalOne %}

<a class="gameicon-link" href="https://retroachievements.org/achievement/153269" target="_blank" rel="noopener"> <img class="gameicon" src="https://media.retroachievements.org/Badge/172011.png" alt="[DevQuest 004] Vet Dev VII"> <span>[DevQuest 004] Vet Dev VII</span></a>
- {% rauserpic ladynadiad %}
- {% rauserpic TheMysticalOne %}

<a class="gameicon-link" href="https://retroachievements.org/achievement/153274" target="_blank" rel="noopener"> <img class="gameicon" src="https://media.retroachievements.org/Badge/172011.png" alt="[DevQuest 004] Vet Dev VIII"> <span>[DevQuest 004] Vet Dev VIII</span></a>
- {% rauserpic Falcus %}

<a class="gameicon-link" href="https://retroachievements.org/achievement/153271" target="_blank" rel="noopener"> <img class="gameicon" src="https://media.retroachievements.org/Badge/172011.png" alt="[DevQuest 004] Vet Dev IX"> <span>[DevQuest 004] Vet Dev IX</span></a>
- {% rauserpic Delmaru %}