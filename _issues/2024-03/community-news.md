---
issue: 2024-03
order: 202403-12
layout: article
author: RANews
title: Community News
toc: true
---

## Tracking Down Playstation Pointers

{% rauser suXin %} is back with another blog post that goes into full detail regarding the tracking of pointers on PlayStation systems, with use of emulator debuggers and the Ghidra compiler. Pointer chains can be complicated to learn, so if you are a (junior) developer who wants to learn more about the most efficient way of tracking them down, this guide can be an absolute lifesaver.

[Tracking down pointers for PlayStation games using debuggers and Ghidra](https://suxin.space/notes/tracking-down-playstation-pointers-using-debuggers-ghidra/)

## Standalone Support

<p align="center">
  <img src="img/HXI.png" />
</p>

As many of you may have already heard, we've been working with the HorizonXI team to bring RetroAchievements support to their Final Fantasy XI private server. Their ideology of maintaining that classic feel of the older FFXI era with some new experiences aligns well with the RA goal of bringing achievements to classic gaming experiences. FFXI holds a significant place in gaming history, especially as a landmark title for the PS2, and we're hoping to introduce even more players to it with this partnership!

Three sets are currently available to play:

|                                                                            |
| -------------------------------------------------------------------------- |
| {% ragamepic 28275, 088542, Final Fantasy XI %}                            |
| {% ragamepic 28317, 089081, Final Fantasy XI: Rise of the Zilart %}        |
| {% ragamepic 28303, 088543, Final Fantasy XI [Subset - Hero of Nations] %} |

Game launcher and instructions on how to link your RA account can be found at [https://horizonxi.com/](https://horizonxi.com/).

## RA Awards

Th RA Awards discussion and voting is at it again for it's 4th year. Checkout the `#rawards-discussion` and `#rawards-voting` Discord channels for more information and the latests polls.

## PlayTester Revamp

The PlayTester team has been revamped in order to expant the team and it's current capabilities. Playtest request can be submitted and discussed via Discord in the new forum channel.

Reach out to {% rauserpic TimeCrush %} for more information.

## Cheat Investigation

We've started an official cheat team and created the dedicated account {% rauserpic RACheats %}.

If you suspect anyone may be cheating or see suspicious scores/times, you can send a DM to that account and the team will look into it.

## Official RA YouTube

The official [RetroAchievements YouTube Channel](https://www.youtube.com/@retrocheevos) has passed 1,000 subscribers. We're looking for users who may already have videos or would like to make videos to contribute to the channel.

Type of content we're looking for:
- "What is RetroAchievements" - A Channel Intro video showcasing what the website is all about!
- Emulation Tutorials,
- Developer Tutorials,
- Achievement Guides,
- Announcement Videos,
- Reviews,
- Top 10's
- ...and more!

If you're interested in making content for the channel reach out to {% rauserpic Snow %} via DM!


## Jr Developer Graduates

| Graduate                   | Game                                                                                   |
| :------------------------- | :------------------------------------------------------------------------------------- |
| {% rauserpic Gudra %}      | {% ragamepic 3591, 085841, Monster Hunter Freedom (PlayStation Portable) %}            |
| {% rauserpic Yurana %}     | {% ragamepic 23908, 082472, Mega Man Battle Network 5: Double Team DS (Nintendo DS) %} |
| {% rauserpic DrewMHax0r %} | {% ragamepic 2495, 074154, Spanky's Quest \| Lucky Monkey (Game Boy) %}                |

**Current Stats**: 7 Developers have graduated in 2024.


## Developer Compliance

### Developer Code of Conduct Updates

Handful of updates have recently been made to the [Developer Code of Conduct](https://docs.retroachievements.org/Developers-Code-of-Conduct/). Below you can find a summary of the key points as well as links to their respective pages and diffs for exact changes.

#### [Rich Presence Custom Name Restriction](<https://docs.retroachievements.org/Rich-Presence/#rich-presence-custom-name-restriction>)

Rich Presence that directly displays custom player input text is now prohibited. We have seen numerous cases where players will input inappropriate and offense names that get displayed on site pages, including the front page. Please update any of your sets that display custom input in the Rich Presence status at your earliest convenience. 

[Docs diff](<https://github.com/RetroAchievements/docs/wiki/Rich-Presence/_compare/3635625844afbbb3558538ee9baf0b10591fa170...42cb7b75099e27ecda94660de6cadc2772151959>)

#### [Writing Policy Username References](<https://docs.retroachievements.org/Writing-Policy/#username-references>)

Writing Policy has been updated to outline the use of username references within achievement sets.
* Username references must be requested and approved.
* Username references must not carry a negative notion.
* Users being referenced can request their name to be removed at any time.
* Banned user references are prohibited.

[Docs diff](<https://github.com/RetroAchievements/docs/wiki/Writing-Policy/_compare/f96ed89137acb859256e6e0a3615002e50ac9e64...a10cefd5fa14b8365b4077444e253235bf14b17d>)

#### [Claim Progress Reports](<https://docs.retroachievements.org/Claims-System/#extending-a-claim>)

Progress Reporting sections added to include the following:
* Progress reports should be posted in **new forum posts** for easier tracking, not editing a previous post. Report should include a overall status of where you are with the set.
* A 3rd extension to a set will require the progress report to be sent to the Developer Compliance team for review.
* Claims with no progress during the 3 month period may be subject to being dropped.

[Docs diff](<https://github.com/RetroAchievements/docs/wiki/Claims-System/_compare/9e7367c777356daea11a792c1574e2e639f5d42a...fb18c628b610d0ba1683c043fcf6980261c738a5>)

#### [Achievement Set Revisions](<https://docs.retroachievements.org/Achievement-Set-Revisions/#when-making-a-revision>)

Win and Progression Types wording added. [m] tag information reworded for Missable feature. Additional points added to the `When Making a Revision` section:
* Revisions should be made with the intention of them being the final revision.
* Avoid making a revision claim shortly after releasing your set. This is very frustrating to the players.
* Making a revision to get a higher rank on the High Scores table is prohibited.

[Docs diff](<https://github.com/RetroAchievements/docs/wiki/Achievement-Set-Revisions/_compare/f090b4666be048be6ef1e6240e7c92e2ab772a13...c12e2757be5f7a2d46100c1c2d975d9517b444f1>)

## Achievement Updates
- {% raach 114622, Sitting Down on the Job %} demoted for Unwanted Concept: Zero effort without purpose
- {% raach 31363, Bullet Fury %} demoted for Unwanted Concept: Grinding without purpose

### Set Approvals
- {% ragame 28561, Super Mario Sunshine [Subset - Max% Pre-Peach] %}
- {% ragame 28560, Super Mario Sunshine [Subset - Hoverless] %}
- {% ragame 28657, Super Mario Sunshine [Subset - Coin Collector] %}
- {% ragame 29039, Mario Golf: Toadstool Tour [Subset - Completionist] %}
- {% ragame 771, Mario & Luigi: Superstar Saga %} [Subset - Rare Drops]
- {% ragame 28596, Dragon Quest V: Hand of the Heavenly Bride [Subset - Treasures n' Trapdoors] %}
- {% ragame 28645, Dragon Quest V Hand of the Heavenly Bride [Subset - Goodies Globetrotter] %}
- {% ragame 28800, Pikmin [Subset - 404 No Blues Found] %}
- {% ragame 28809, Pikmin [Subset - 6 Day Challenge] %}
- {% ragame 28807, Viewtiful Joe [Subset - Rainbow V] %}
- {% ragame 4378, Pac-Attack %} [Japan]
- {% ragame 3154, Metroid Prime %} [Subset - NES Prime]
- {% ragame 28798, Tales of Symphonia [Subset - Gung Ho Run] %}
- {% ragame 28797, Pokemon Colosseum [Subset - Espeon & Umbreon] %}


## Site Updates

### RAWeb v6.0.0
- New design for statistics on user profile pages by [@wescopeland](https://github.com/wescopeland) in #2175
- Show progress/backlog columns on console game lists by [@wescopeland](https://github.com/wescopeland) in #2161
- Add Game Suggestions page by [@Jamiras](https://github.com/Jamiras) in #2159
- Add progress to Recent Players list on game pages by [@Jamiras](https://github.com/Jamiras) in #2160
- Make game list header rows stick to top when scrolling by [@wescopeland](https://github.com/wescopeland) in #2149
- Allow filtering game lists by progression status by [@wescopeland](https://github.com/wescopeland) in #2148
- Show Beaten/Completed/Mastery indicators in Completion list on profile page by [@wescopeland](https://github.com/wescopeland) in #2153
- Adjust point text in recent games when some achievements are hardcore and others aren't by [@wescopeland](https://github.com/wescopeland) in #2157
- Add 'Games without 100% completion' filter to Completion Progress page by [@wescopeland](https://github.com/wescopeland) in #2169
- Add copy to clipboard functionality for web api key by [@wescopeland](https://github.com/wescopeland) in #2150
- Adjust 'Viewing X of Y' label for recent players if both numbers match by [@wescopeland](https://github.com/wescopeland) in #2154
- Adjust colors on Recent Progress chart by [@wescopeland](https://github.com/wescopeland) in #2167
- Adjust alignment of achievement grid within Recently Played game dropdowns by [@drisc](https://github.com/drisc) in #2177
- Remove unlock distribution chart when viewing unofficial achievements by [@wescopeland](https://github.com/wescopeland) in #2168
- Swap Twitter link for Threads in footer by [@wescopeland](https://github.com/wescopeland) in #2170
- Use singular/plural label for ticket count on achievement pages by [@wescopeland](https://github.com/wescopeland) in #2184
- Allow .7z urls for RAPatches links in hash manager by [@wescopeland](https://github.com/wescopeland) in #2151
- Fix ticket manager link on unofficial game pages not going to tickets for unofficial achievements by [@drisc](https://github.com/drisc) in #2183
- Fix extra space being shown for empty motto by [@wescopeland](https://github.com/wescopeland) in #2156
- Fix issue unlinking hashes for games with apostrophes in title by [@wescopeland](https://github.com/wescopeland) in #2164
- Fix badge alignment on reorder page [@drisc](https://github.com/drisc) in #2174
- Fix missing text for Certified Legend badge to reorder page by [@drisc](https://github.com/drisc) in #2171
- Fix site-awards alignment by [@drisc](https://github.com/drisc) in #2139
- Fix small gap at the rounded corners of tooltips by [@drisc](https://github.com/drisc) in #2163

**Environment**

- Use models to fetch comments by [@wescopeland](https://github.com/wescopeland) in #2181
- Optimize gameslist and officialgameslist routines by [@wescopeland](https://github.com/wescopeland) in #2182
- Clean up system names and images by [@luchaos](https://github.com/luchaos) in #2172
- Store new permissions related timestamps by [@luchaos](https://github.com/luchaos) in #2189
- Support for additional leaderboard formats by [@Jamiras](https://github.com/Jamiras) in #2166

**Future Features**

- Add Filament admin panel and permission matrix preparations by [@luchaos](https://github.com/luchaos) in #2165

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/6.0.0)

### RAWeb v6.1.0
- Link URLs in motto on profile page by [@wescopeland](https://github.com/wescopeland) in #2241
- Link recent players progress bars to game compare page by [@wescopeland](https://github.com/wescopeland) in #2236
- Add link to beaten games stat on profile page by [@wescopeland](https://github.com/wescopeland) in #2230
- Add warning if attempting navigation while editing code notes by [@wescopeland](https://github.com/wescopeland) in #2226
- Add pagination to global developer stats page by [@wescopeland](https://github.com/wescopeland) in #2253
- Disallow all html except <a> and <br> tags in news posts by [@wescopeland](https://github.com/wescopeland) in #2240
- Allow filtering Standalone system on completion progress page by [@wescopeland](https://github.com/wescopeland) in #2235
- Allow viewing Events on completion progress page by [@wescopeland](https://github.com/wescopeland) in #2251
- Adjust location of moderation tools on profile page by [@wescopeland](https://github.com/wescopeland) in #2233
- Remove link from Untracked site ranks on user profile page by [@wescopeland](https://github.com/wescopeland) in #2228
- Don't show comments from banned users by [@wescopeland](https://github.com/wescopeland) in #2234
- Don't report 'linked by' on supported game files page (only on manage hashes page) by [@wescopeland](https://github.com/wescopeland) in #2244
- Don't show "no related games" on hub pages without games by [@wescopeland](https://github.com/wescopeland) in #2252
- Add warning when following link to untrusted domains by [@wescopeland](https://github.com/wescopeland) in #2242
- Remove "report cheats" from RAdmin messaging criteria on contact page by [@wescopeland](https://github.com/wescopeland) in #2249
- Fix player count for subset if parent game has no players by [@wescopeland](https://github.com/wescopeland) in #2259
- Fix unofficial achievements being marked as unlocked by [@wescopeland](https://github.com/wescopeland) in #2237
- Fix rendering of less than in recent forum posts widget by [@wescopeland](https://github.com/wescopeland) in #2239
- Fix beaten stats not being updated when resetting progress by [@wescopeland](https://github.com/wescopeland) in #2232
- Fix double-counting hacks on homebrew systems on beaten leaderboard by [@wescopeland](https://github.com/wescopeland) in #2227
- Fix progress indicators appearing in front of menu bar by [@wescopeland](https://github.com/wescopeland) in #2243
- Fix manual unlocks not showing in user game activity page by [@Jamiras](https://github.com/Jamiras) in #2256
- Fix broken link for manual unlock instructions when creating ticket by [@Jamiras](https://github.com/Jamiras) in #2254

**Public API**

- Add IconURL to API_GetConsoleIDs by [@WedgeSparda](https://github.com/WedgeSparda) in #2264

**Environment**

- Add note about updating api-docs in CONTRIBUTING.md by [@wescopeland](https://github.com/wescopeland) in #2263
- Eliminate Site namespace by [@luchaos](https://github.com/luchaos) in #2186
- Prepare for Folio and Octane by [@luchaos](https://github.com/luchaos) in #2229
- Enable Octane reloads in Docker by [@luchaos](https://github.com/luchaos) in #2238

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/6.1.0)

## Emulator Update

### RALibretro v1.7.0
- Implement microphone interface for cores that support it
- Enable NeoCD core for NeoGeo CD
- Enable Uzem core for Uzebox
- Enable melonDS DS for DS/DSi
- Enable mGBA core for GB/GBC
- Support identifying PSP CHDs (note: does not support DVD formatted CHDs)
- Show warning when loading a core that hasn't been updated in over a year
- Support for numeric prefixes on state files in Load Game State dialog
- Default 'Preserve aspect ratio' setting to true
- Put DSI under Nintendo submenu when separating cores by manufacturer
- Fix hash logic for small files on CDs (affects PSP hashes)
- Fix runtime state not being reset when loading save state without achievement data
- Fix window shrinking on Windows 11
- Fix background input indicator not showing as checked after restarting application
- RAHasher: support wildcard filename matching

### RA Integration 1.3 Alpha & Beta

**1.3 Alpha**

- Adds ASCII view to memory inspector when window is wide enough
- Support for marking achievement types (Missable/Progression/Win)
- Support for Float BE
- Updated overlay for achievements list
- Lots of under-the-hood changes to better support multi-threaded frontends and leverage the rc_client integration layer we're recommending for all standalones to use.

**1.3 Beta**
- Fixes a couple more multi-threaded issues and finalizes the rc_client integration.

## DevQuest

### DevQuest Awards
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 15940, 044438, [DevQuest 001] Ticket Massacre %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1">{% rauserpic Sutarion %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 22561, 087705, [DevQuest 001-II] Ticket Massacre II %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1">{% rauserpic Bryan1150 %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 25674, 087808, [DevQuest 001-III] Ticket Massacre III %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1">{% rauserpic Excessiveiser %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 15952, 043647, [DevQuest 004] Veteran Deveoper %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1">{% rauserpic Etron %}</td>
          <td rowspan="1">{% rauserpic ladynadiad %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 15907, 045565, [DevQuest 006] The Unwanted %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1" width=250>{% rauserpic Wulden %}</td>
          <td colspan="1">{% ragamepic 10492, 075103, Knightmare II: The Maze of Galious (MSX) %}</td>
        </tr>
        <tr>
          <td rowspan="1" width=250>{% rauserpic Gudra %}</td>
          <td colspan="1">{% ragamepic 22356, 067175, Penguin Patrol (DSi) %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 15918, 047727, [DevQuest 008] World Traveler %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="2" width=250>{% rauserpic tomojin %}</td>
          <td colspan="1">{% ragamepic 24540, 076129, Golgo 13 (SG-1000) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 24912, 075602, Asuka 120% Limited BURNING Fest. (Saturn) %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 672,  052519,  [DevQuest 012] Hacker's Habit %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="2" width=250>{% rauserpic clymax %}</td>
          <td colspan="1">{% ragamepic 27741, 087463, ~Hack~ Battle of Olympus, The: Item Randomizer (NES) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 28048, 089776, ~Hack~ Blaster Master: The Lost Key (NES) %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 795,  057676,  [DevQuest 013] complete.me %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="3" width=250>{% rauserpic kmpers %}</td>
          <td colspan="1">{% ragamepic 7119, 075842, Micro Machines (GB) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 10183, 010882, ~Unlicensed~ Mortal Kombat II (Hummer Team) (NES) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 735, 042699, Teenage Mutant Ninja Turtles: Fall of the Foot Clan (GB) %}</td>
        </tr>
        <tr>
          <td rowspan="3" width=250>{% rauserpic Wulden %}</td>
          <td colspan="1">{% ragamepic 336, 049198, Incredible Hulk, The (SNES) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 46, 049849, Atomic Runer (MD) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 1165, 028491, Soldier of Fortune | The Chaos Engine (SNES) %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 809,  068013,  [DevQuest 015] Console Conqueror %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1">{% rauserpic Hexadigital %}</td>
          <td rowspan="1">{% rauserpic ladynadiad %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 809,  058480,  [DevQuest 016] Wish This Set %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1" width=250>{% rauserpic WilHiteWarrior %}</td>
          <td colspan="1">{% ragamepic 5669, 075575, Contra: Shattered Soldier (PS2) %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 22566, 087807, [DevQuest 016-II] Wish This Set II %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1" width=250>{% rauserpic ThatAmericanSlacker %}</td>
          <td colspan="1">{% ragamepic 5669, 075575, Contra: Shattered Soldier (PS2) %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 15942, 062544, [DevQuest 017] RA World Cup %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="2" width=250>{% rauserpic MaddieKittyTV %}</td>
          <td colspan="1">{% ragamepic 22163, 079906, Apple Bowl (AII) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 8899, 074950, Dick Vitale's "Awesome, Baby!" College Hoops (MD) %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 22564, 073716, [DevQuest 018] Subset Station %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="2" width=250>{% rauserpic s0uth %}</td>
          <td colspan="1">{% ragamepic 28240, 087840, Kirby Super Star Ultra [Subset - Minimum Jump Challenge] (NDS) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 25657, 083086, Pokemon Gold Version [Subset - Professor Oak Challenge] (GBC) %}</td>
        </tr>
        <tr>
          <td rowspan="2" width=250>{% rauserpic Hexadigital %}</td>
          <td colspan="1">{% ragamepic 26982, 084951, Puyo Puyo Da! [Subset - Full Chain] (DC) %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 28590, 089537, ~Hack~ Pokemon Periwinkle Version: Special Blobbos Edition [Subset - Prof. Oak] (GB) %}</td>
        </tr>
        <tr>
          <td rowspan="2" width=250>{% rauserpic tomojin %}</td>
          <td colspan="1">{% ragamepic 28292, 088693, Tenchi o Kurau II: Sekiheki no Tatakai [Subset - Multi] %}</td>
        </tr>
        <tr>
          <td colspan="1">{% ragamepic 28437, 089231, Arcade Gears Vol. 1: Pu-Li-Ru-La [Subset - Bonus] %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 22565, 083449, [DevQuest 019] Wheel of Genres %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td rowspan="1" width=250>{% rauserpic suspect15 %}</td>
          <td colspan="1">{% ragamepic 16572, 089312, Final Fantasy XII: Revenant Wings (NDS) %}</td>
        </tr>
    </tbody>
</table>

### Veteran Dev Awards
