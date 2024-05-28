---
issue: 2024-05
order: 202405-12
layout: article
author: RANews
title: Community News
toc: true
---

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

## Discord Updates
A new `#role-request` channel has been created off of the existing `#tech-support` to prevent the number of role request threads from overtaking the tech support threads.

## Team Additions

<table>
    <thead>
        <tr>
            <th colspan="3"><a alt=""> <span>Code Reviewer</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic authorblues %}</td>
            <td colspan="1">{% rauserpic Souzooka %}</td>
            <td colspan="1">{% rauserpic tomojin %}</td>
        </tr>
    </tbody>
</table>

## Jr Developer Graduates

| Graduate                      | Game                                                           |
| :---------------------------- | :------------------------------------------------------------- |
| {% rauserpic Cheatsalot123 %} | {% ragamepic 2622, 045334, Suikoden Tactics (PlayStation 2) %} |

**Current Stats**: 15 Developers have graduated in 2024.

## Developer Compliance

### Set Approvals

* [Resident Evil Outbreak [Subset - Online Multiplayer]](https://retroachievements.org/game/29739)
* [Resident Evil Outbreak [Subset - Very Hard Challenges]](https://retroachievements.org/game/29737)
* [Resident Evil Outbreak: File #2 [Subset - Online Multiplayer]](https://retroachievements.org/game/29740)
* [Resident Evil Outbreak: File #2 [Subset - Very Hard Challenges]](https://retroachievements.org/game/29738)
* [Guitar Hero: On Tour [Subset - Expert Full Combos]](https://retroachievements.org/game/29583)

### Achievement Updates

* [Buggy as Hell!](https://retroachievements.org/achievement/165522) demoted for glitch requirement

## Site Updates

### RAWeb 6.2.0
- Add patch download links to Supported Game Files by [@wescopeland](https://github.com/wescopeland) in [#2329](https://github.com/RetroAchievements/RAWeb/pull/2329)
- Use progress bar for Followed Users progress comparison widget; ignore users who have played the set but not earned achievements by [@wescopeland](https://github.com/wescopeland) in [#2314](https://github.com/RetroAchievements/RAWeb/pull/2314)
- Allow Required for Beaten dialog when not logged in [@wescopeland](https://github.com/wescopeland) in [#2337](https://github.com/RetroAchievements/RAWeb/pull/2337)
- Added systems icons for: Amiga, Phillips CDi and PC-9800 by [@oddgoo](https://github.com/oddgoo) in [#2321](https://github.com/RetroAchievements/RAWeb/pull/2321)
- Add audit record for muting users; show muted until date in editor and on profile page for moderators by [@wescopeland](https://github.com/wescopeland) in [#2323](https://github.com/RetroAchievements/RAWeb/pull/2323)
- Prevent muted users from opening tickets by [@wescopeland](https://github.com/wescopeland) in [#2331](https://github.com/RetroAchievements/RAWeb/pull/2331)
- Differentiate between 'mastered' and 'completed' on set revision emails by [@wescopeland](https://github.com/wescopeland) in [#2344](https://github.com/RetroAchievements/RAWeb/pull/2344)
- Fix search result selection sometimes performing search instead of opening related page by [@wescopeland](https://github.com/wescopeland) in [#2336](https://github.com/RetroAchievements/RAWeb/pull/2336)
- Fix prepopulated fields not being populated in new messages by [@Jamiras](https://github.com/Jamiras) in [#2339](https://github.com/RetroAchievements/RAWeb/pull/2339)
- Fix character escaping issues in Edit Post page by [@wescopeland](https://github.com/wescopeland) in [#2317](https://github.com/RetroAchievements/RAWeb/pull/2317)
- Fix style discrepancies in light mode by [@gboquizosanchez](https://github.com/gboquizosanchez) in [#2327](https://github.com/RetroAchievements/RAWeb/pull/2327)
- Fix player score not being recalculated when achievements promoted/demoted [@wescopeland](https://github.com/wescopeland) in [#2334](https://github.com/RetroAchievements/RAWeb/pull/2334)
- Fix fractional page display on last page of developer stats by [@wescopeland](https://github.com/wescopeland) in [#2325](https://github.com/RetroAchievements/RAWeb/pull/2325)

### Public API:
- Migrate API_GetGame and API_GetGameExtended to Eloquent ORM by [@drisc](https://github.com/drisc) in [#2193](https://github.com/RetroAchievements/RAWeb/pull/2193)

### Environment:
- Start capturing User Agent for player sessions by [@Jamiras](https://github.com/Jamiras) in [#2333](https://github.com/RetroAchievements/RAWeb/pull/2333)
- Remove User column from the SetRequest table by [@wescopeland](https://github.com/wescopeland) in [#2304](https://github.com/RetroAchievements/RAWeb/pull/2304)
- Remove UserTo and UserFrom from the Messages table by [@wescopeland](https://github.com/wescopeland) in [#2320](https://github.com/RetroAchievements/RAWeb/pull/2320)
- Add author_id column to Leaderboard table by [@wescopeland](https://github.com/wescopeland) in [#2319](https://github.com/RetroAchievements/RAWeb/pull/2319)
- Add user_id column to SiteAward table by [@wescopeland](https://github.com/wescopeland) in [#2299](https://github.com/RetroAchievements/RAWeb/pull/2299)
- Add user_id column to SetClaim table by [@wescopeland](https://github.com/wescopeland) in [#2305](https://github.com/RetroAchievements/RAWeb/pull/2305)
- Populate user_id and related_user_id values in Friends table by [@wescopeland](https://github.com/wescopeland) in [#2318](https://github.com/RetroAchievements/RAWeb/pull/2318)
- Rename ForumTopicComment.AuthorID to author_id, add foreign key by [@wescopeland](https://github.com/wescopeland) in [#2315](https://github.com/RetroAchievements/RAWeb/pull/2315)
- Fix seeder for SetClaim table by [@drisc](https://github.com/drisc) in [#2330](https://github.com/RetroAchievements/RAWeb/pull/2330)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/6.3.0)

## RAWeb 6.4.0
- Separate nav bar item for ticket notifications for developers by [@drisc](https://github.com/drisc) in [#2373](https://github.com/RetroAchievements/RAWeb/pull/2373)
- Show related game in achievement search results by [@Jamiras](https://github.com/Jamiras) in [#2365](https://github.com/RetroAchievements/RAWeb/pull/2365)
- Show actual game icon for embedded previews of mature games by [@drisc](https://github.com/drisc) in [#2374](https://github.com/RetroAchievements/RAWeb/pull/2374)
- Allow SECS_AS_MINS formatting for leaderboards by [@Jamiras](https://github.com/Jamiras) in [#2348](https://github.com/RetroAchievements/RAWeb/pull/2348)
- Notes section of achievement logic decoder is now collapsible and collapsed by default by [@Jamiras](https://github.com/Jamiras) in [#2351](https://github.com/RetroAchievements/RAWeb/pull/2351)
- Use first unlock as a reference for the average points per week by [@Zekromaster](https://github.com/Zekromaster) in [#2369](https://github.com/RetroAchievements/RAWeb/pull/2369)
- Fix incorrect player count for subsets with no parent sets by [@wescopeland](https://github.com/wescopeland) in [#2363](https://github.com/RetroAchievements/RAWeb/pull/2363)
- Fix set requestors button not being visible if unofficial achievements exist by [@wescopeland](https://github.com/wescopeland) in [#2370](https://github.com/RetroAchievements/RAWeb/pull/2370)
- Fix login issue after follower's account was deleted by [@wescopeland](https://github.com/wescopeland) in [#2353](https://github.com/RetroAchievements/RAWeb/pull/2353)
- Fix extra whitespace in Achievement of the Week widget by [@wescopeland](https://github.com/wescopeland) in [#2383](https://github.com/RetroAchievements/RAWeb/pull/2383)
- Fix View Activity button size on smaller sizes of Game Compare page by [@wescopeland](https://github.com/wescopeland) in [#2360](https://github.com/RetroAchievements/RAWeb/pull/2360)
- Fix broken badge in tooltips on achievement list page by [@wescopeland](https://github.com/wescopeland) in [#2359](https://github.com/RetroAchievements/RAWeb/pull/2359)

### Environment:

- Prevent error migrating fresh database by [@Jamiras](https://github.com/Jamiras) in [#2366](https://github.com/RetroAchievements/RAWeb/pull/2366)
- Add foreign key to GameData.ForumTopicID by [@wescopeland](https://github.com/wescopeland) in [#2358](https://github.com/RetroAchievements/RAWeb/pull/2358)
- Drop Author column from News table by [@wescopeland](https://github.com/wescopeland) in [#2310](https://github.com/RetroAchievements/RAWeb/pull/2310)
- Rename related users model relations to make it more clear they return User models by [@wescopeland](https://github.com/wescopeland) in [#2355](https://github.com/RetroAchievements/RAWeb/pull/2355)
- Migrate GetAchievementData to Eloquent ORM by [@wescopeland](https://github.com/wescopeland) in [#2340](https://github.com/RetroAchievements/RAWeb/pull/2340)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/6.4.0)

## Emulator Updates
## RAIntegration 1.3
**For players**:
- Show softcore score at login and in overlay when hardcore is disabled
- Show rarity in achievement popups (new sound for very rare unlocks - overlay/rareunlock.wav)
- New collapsible subheaders in overlay
- Show progression/win/missable indicators in overlay

**For developers**:
- Add ASCII display to memory viewer (when wide enough)
- Support for Float BE data type
- Support for Double32/Double32 BE data types
- Support for marking achievement types (Missable/Progression/Win)
- Support for Seconds as Minutes leaderboard format
- Support for new leaderboard formats (Tens/Hundreds/Thousands/Fixed1/Fixed2/Fixed3/Unsigned)
- Improved support for following single-level indirect notes
- Don't show unknown game dialog when switching discs previously selected for compatibility testing
- Add warning about using ResetIf with a hit target of 1
- Prevent attempt to publish modified rich presence
- Fix conditions disappearing when toggling decimal while in an invalid state
- Fix count reporting 1 match when pointer finder doesn't find any matches

**Framework**:
- Several thread safety improvements
- Convert internal runtime to rc_client (allow more logic to be managed the same as in other clients)
- Export functions for loading dll through rc_client

## RAVBA-M 1.1.0
It is available from the Downloads page.
- Fixes an issue where portions of RAM would sometimes become all FF (particularly SRAM on GBC), but also includes an upgrade from VBA-M 2.1.4 -> 2.1.9.
- Savestates from older versions may not be compatible (I had good luck with GB/GBA, but bad luck with GBC).

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
            <td rowspan="3">{% rauserpic Sines %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 15953, 044440, [DevQuest 003] Singles in Your Area %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="1">{% rauserpic LordAndrew %}</td>
            <td rowspan="1">{% rauserpic Guinea %}</td>
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
            <td rowspan="1">{% rauserpic Cadaxar %}</td>
            <td rowspan="1">{% rauserpic WanderingHeiho %}</td>
            <td rowspan="1">{% rauserpic wolfman2000 %}</td>
        </tr>
        <tr>
            <td colspan="3">{% rauserpic timenoe %}</td>
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
            <td rowspan="1" width=250>{% rauserpic Sigma501 %}</td>
            <td colspan="1">{% ragamepic 12913, 071574, Warbirds %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 17758, 046249, [DevQuest 007] Most Wanted %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="1" width=250>{% rauserpic authorblues %}</td>
            <td colspan="1">{% ragamepic 10509, 050039, ~Hack~ Super Mario 64: Randomizer %}</td>
        </tr>
        <tr>
            <td rowspan="1" width=250>{% rauserpic Gudra %}</td>
            <td colspan="1">{% ragamepic 4753, 074184, Klonoa Heroes: Densetsu no Star Medal %}</td>
        </tr>
        <tr>
            <td rowspan="1" width=250>{% rauserpic Layton %}</td>
            <td colspan="1">{% ragamepic 13437, 092964, LSD: Dream Emulator %}</td>
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
            <td rowspan="4" width=250>{% rauserpic Kinglink %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 11654, 087251, Elevator Action Returns %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 8360, 073025, Wonder Momo %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 28879, 097258, Sega Rally Championship %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 1280, 049821,  [DevQuest 011] The Genesis of RA %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="1" width=250>{% rauserpic Gudra %}</td>
            <td colspan="1">{% ragamepic 123, 093769, Pepenga Pengo %}</td>
        </tr>
        <tr>
            <td rowspan="1" width=250>{% rauserpic Mendil %}</td>
            <td colspan="1">{% ragamepic 223, 047149, Beauty and the Beast: Roar of the Beast %}</td>
        </tr>
        <tr>
            <td rowspan="1" width=250>{% rauserpic Bl4h8L4hBl4h %}</td>
            <td colspan="1">{% ragamepic 8927, 092988, Crayon Shin-chan: Arashi o Yobu Enji %}</td>
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
            <td rowspan="3" width=250>{% rauserpic Bl4h8L4hBl4h %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 17455, 092993, ~Hack~ Epic Racers %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 26549, 092949, ~Hack~ Hack 6 %}</td>
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
            <td rowspan="4" width=250>{% rauserpic Hexadigital %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 7092, 025111, Disney Princess %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 391, 071273, Art of Fighting | Ryuuko no Ken %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 5068, 067756, Alien Hominid %}</td>
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
            <td rowspan="1" width=250>{% rauserpic Yurana %}</td>
            <td colspan="1">{% ragamepic 23701, 077501, ~Hack~ Mega Man Star Force DX %}</td>
        </tr>
        <tr>
            <td rowspan="1" width=250>{% rauserpic authorblues %}</td>
            <td colspan="1">{% ragamepic 8654, 093527, ~Unlicensed~ Titenic %}</td>
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
            <td rowspan="1" width=250>{% rauserpic suspect15 %}</td>
            <td colspan="1">{% ragamepic 7598, 093775, Bonk's Revenge %}</td>
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
            <td rowspan="1" width=250>{% rauserpic pickledyamsman %}</td>
            <td colspan="1">{% ragamepic 12865, 094341, Buck Rogers: Countdown to Doomsday %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% ragamepic 25677, 093270, [DevQuest 021] Homebrew Heaven %}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="4" width=250>{% rauserpic ladynadiad %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 29151, 093743, ~Homebrew~ Pumpkin Attack! %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 23737, 092540, ~Homebrew~ Gears of Fate %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 29094, 093722, ~Homebrew~ 10 Lines Princess %}</td>
        <tr>
        </tr>
            <td rowspan="4" width=250>{% rauserpic suspect15 %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 7256, 093726, ~Homebrew~ Deep Dungeon %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 29078, 093521, ~Homebrew~ Anima %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 29052, 093281, ~Homebrew~ Oopi's Quest %}</td>
        <tr>
        </tr>
            <td rowspan="4" width=250>{% rauserpic TheMysticalOne %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 25297, 092278, ~Homebrew~ Vec-Man %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 23772, 093571, ~Homebrew~ Cross Shoot %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 29070, 093389, ~Homebrew~ Astrocop %}</td>
        <tr>
        </tr>
            <td rowspan="4" width=250>{% rauserpic Sines %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 29147, 093665, ~Homebrew~ sweetsdigger %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 29093, 093592, ~Homebrew~ Relevo's Snowboarding %}</td>
        </tr>
        <tr>
            <td colspan="1">{% ragamepic 19715, 092191, ~Homebrew~ Game & Lynx: Critter Championship %}</td>
        </tr>
    </tbody>
</table>


### Veteran Dev Awards

<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153266, 331850, Vet Dev I %}Has published at least 1000 achievements AND worked on at least 25 sets as sole or majority developer</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic raniejogos %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153267, 331850, Vet Dev II %}Has created achievements for at least ten different consoles</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic Sutarion %}</td>
            <td colspan="1">{% rauserpic Hotscrock %}</td>
            <td colspan="1">{% rauserpic s0uth %}</td>
        </tr>
        <tr>
            <td colspan="1">{% rauserpic Gollawiz %}</td>
            <td colspan="2">{% rauserpic raniejogos %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153268, 331850, Vet Dev III %}Has been an active developer for at least two years</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic malasdair %}</td>
            <td colspan="1">{% rauserpic WanderingHeiho %}</td>
            <td colspan="1">{% rauserpic timenoe %}</td>
        </tr>
        <tr>
            <td colspan="1">{% rauserpic Gollawiz %}</td>
            <td colspan="1">{% rauserpic raniejogos %}</td>
            <td colspan="1">{% rauserpic wolfman2000 %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153270, 331850, Vet Dev IV %}At least 85 percent of overall sets have dynamic rich presence [Vet Dev I required]</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic raniejogos %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153272, 331850, Vet Dev V %}Yielded unlocks have exceeded 50,000</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic Jenettebaghead %}</td>
            <td colspan="1">{% rauserpic NeonPug %}</td>
            <td colspan="1">{% rauserpic Sines %}</td>
        </tr>
        <tr>
            <td colspan="3">{% rauserpic raniejogos %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153269, 331850, Vet Dev VII %}Has used at least 75 percent of all currently available flags and features [Vet Dev I and VI required]</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic Cadaxar %}</td>
            <td colspan="2">{% rauserpic WanderingHeiho %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153274, 331850, Vet Dev VIII %}Has obtained at least two badges through DevQuest</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic Sutarion %}</td>
            <td colspan="2">{% rauserpic raniejogos %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3">{% raachpic 153271, 331850, Vet Dev IX %}Has obtained at least five badges through DevQuest</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="1">{% rauserpic Sutarion %}</td>
            <td colspan="2">{% rauserpic raniejogos %}</td>
        </tr>
    </tbody>
</table>