---
issue: 2022-01
order: 202201-06
layout: article
title: A Year In Review
author: MrOwnership
toc: true
---

# Intro

# Community Updates
* User [Code of Conduct](https://docs.retroachievements.org/Users-Code-of-Conduct/) updated to be more clear and simple.
* Users with less than 500 points will not be ranked in the global leaderboards.
* Junior Developer site role introduced.
* Efforts made to standardize game genres have begun.
* Artist role created to help others with icon and badge work.
* Rescore Project has been completed. The project lasted from June 2019 through April 2021.
* Cheevo mascot created and discord emojis added for him.
* RA Twitter account gets revived... then blocked :cry:... then unblocked :innocent:.
* {% rauserpic QATeam %} created to increase and maintain set quality.
* [RAPodcast](https://www.youtube.com/channel/UCIGdJGxrzmNYMaAGPsk2sIA/videos) episodes 13-24 released.
* Devs can now requests completed sets to be held in unofficial until a certain date to be released.
* Credit for set, badges, icons, etc. has started being put into the first post of a sets forum topic.
* Awesome video by {% rauserpic iShade %} on [What are Retro Achievements?](https://www.youtube.com/watch?v=g0hmYv6czs8).
* Various updates to RABot, RAWeb, RAIntegration, RATools, and RA Emulators throughout the year.

## Console/Core Support
* add yabause as a supported core (Sega Saturn)
* add freeintv as a supported core (Intellivision)
* add potator as a supported core (Watara Supervision)
* add quicknes as a supported core (Nintendo Entertainment System)
* add swanstation as a supported core (Playstation)
* add PicoDrive as a supported core for Sega CD
* remove Gearsystem as supported core for Genesis
* DuckStation, NEStopia, Sameboy are officially unsupported
* Intellivision support
* Watara Supervision support
* PSP support


# Developer Rule & Policy Updates

## Rule Updates
* Sudoku/Picross Scoring Update. "1 point for easy, 2-3 points for medium, 4-5 points for hard"
* Logic backups required by developers when updating achievements that are not their own.
* Set icons should be representative of the game and its common themes, and therefore should be instantly recognizable.
* `Bonus`, `Multi`, and `Subset` naming conventions updated to `[Bonus]` rather than `~Bonus~`.
* Unfinished sets should stay in unofficial until finished. Sets that fail to cover the content to at least game completion would fall under this rule.
* Bonus sets are to be treated like revisions and will require and set plan and vote in #revision-voting, unless release alongside and existing set claim. If a junior developer wants to publish a bonus set alongside a core set, they need to have their plan approved by code reviewers.
* Changing the description to clarify or correct it to match the logic that is already present does NOT require a revision vote.
* Altering the achievement's objective in any way does require a revision vote as always.
* Leaderboard edits or entry removals must now come with a comment from the developer to avoid ambiguity as to the nature of a change or reason for an entry removal that's not their own.
* Do not declare your plans to work on a game if you have unaddressed tickets. A ticket is considered as addressed when the developer acknowledged the ticket, commented on it explaining the situation but is unable to resolve the problem immediately due to reasons such as waiting for saves states or more information from the reporter.
* New rules on [Editing Leaderboards](https://docs.retroachievements.org/Developers-Code-of-Conduct/#editing-leaderboards).
* If a fellow developer has already started to handle a ticket thru action that can be proved with comment of intent, leave it to them. The user would be given a time of 7 days to handle the ticket after comment.
* Softcore ticket handling updates:

```
Does the achievement have hits?
If Yes > Verify what current version of RetroArch are they using. 
If 1.9.1  or newer > Ticket handling is the same as a hardcore ticket being submitted

If prior to 1.9.1 or DuckStation Standalone> Investigate like normal.
It IS possible that the achievement could have not triggered due to
save-state abuse, but is still important to check.

If there are no hits > Ticket handling is the same as a hardcore ticket being submitted.
```
* Professor Oak Subsets no longer require approval.
* Reminder to make a new post when reclaiming a set, don't just update the original claim post.
* Ability to hold a finished set in unofficial for a future event, or holiday without it taking a claim spot. Must be approved by QA Team.
* Sole/Majority devs can now request forum topic transfers so they are now the author of the first post and can edit it freely.

## Policy Updates
* Updates
  * _DevCoC - Reservation + Ticket Handling_
    * `"Open tickets" was changed to "Unaddressed Tickets" + additional info`
  * _Docs - Achievement Set Revisions - When Making a Revision_
    * `Resolve any open tickets for achievements that will be kept in the set. Tickets for achievements that are being demoted can simply be closed with the demotion cited. In cases where the revision is simply the demotion of one or more achievements, the developer does not need to handle the tickets for other achievements in the set.`
  * _Docs - Icon Gauntlet_
    * `Updated Discord Template`
* Changes
  * _DevCoC - Unwelcome Concepts_
    * `12. Sets for compilations featuring games that share the same console as the compilation. An example of this is 6-Pak for Genesis/Mega Drive, which contains six Genesis/Mega Drive games.`
  * _Docs - Respecting Revision Plans_
    * `If you are one of or the original set developer(s) for a set that is currently undergoing a revision, you must communicate with the developer carrying out the revision before making changes to the set. This is to prevent potential extra work for the revision, overlapping or redundant changes, etc.`
  * _Docs - Icon Gauntlet - No Need for Approval_
    * `5. You are one of the existing set's original developers as part of a collaborative set, all parties agree to the change, and no other developer has changed the icon/badge(s).`
* Removals
  * _DevCoC - Reservation Limit_
    * `8 claim limit for Veteran Devs. It was voted on to be removed a while back, but was not changed in the docs until the Veteran Developer badge was ready.`

# Artists


# Code Reviewers & Junior Developers
The Junior Developer program is responsible for aiding and assisting aspiring achievement sets developers as they try to earn the rank of a full developer. New this year is the much needed and requested [Junior Developer site role](https://retroachievements.org/viewtopic.php?t=13332). This new role allows Junior Developers access to several site features, that were previously Developer only.

Here is a monthly breakdown of the some Junior Developer stats from throughout the year.

| Month     | Jr. Devs Added | Jr. Devs Promoted | Reviews Completed |
| :-------- | :------------- | :---------------- | :---------------- |
| January   | 14             | 4                 | 12                |
| February  | 14             | 2                 | 17                |
| March     | 14             | 3                 | 21                |
| April     | 13             | 7                 | 12                |
| May       | 15             | 2                 | 16                |
| June      | 19             | 3                 | 14                |
| July      | 6              | 6                 | 17                |
| August    | 9              | 1                 | 16                |
| September | 17             | 4                 | 20                |
| October   | 20             | 0                 | 25                |
| November  | 6              | 2                 | 12                |
| December  | 14             | 0                 | 20                |
| **Total** | **161**        | **34**            | **202**           |

Big thanks to all the Code Reviewers who offer their free time to help review sets, teach concepts, and provide guidance to the next generation of achievement developers. If you are interested in becoming a Code Reviewer please reach out to any of the following current Code Reviewers:

| {% rauserpic blendedsea %}  | {% rauserpic DanielARP %} | {% rauserpic KingS1zzle %}   |
| {% rauserpic MrOwnership %} | {% rauserpic Pebete %}    | {% rauserpic pinguupinguu %} |
| {% rauserpic Ryudo %}       | {% rauserpic Searo %}     | {% rauserpic Shmelyoff %}    |
| {% rauserpic SporyTike %}   | {% rauserpic tralph3 %}   |                              |

# Playtesters
![Playtester Badge](https://retroachievements.org/Images/044834.png) [Playtester Badge (Events)](https://retroachievements.org/game/15950)

The Playtester program was officially put into motion this year. Along with a slick discord role and icon, users are able to earn a Playtester site badge for playtesting sets, finding issues and validating achievement unlocks before a set goes live. Here are some stats from the playtests over the past year.

| Sets playtested.                           | 147  |
| Issues found during playtesting.           | 509  |
| Achievements validated during playtesting. | 1491 |
| User who have playtested at least 1 set.   | 24   |
| User awarded there Playtester badge.       | 8    |

If you are interested in becoming a Playtester please reach out to {% rauserpic Haruda %}.

# Quality Assurance Team
QA Team was created this year to monitoring achievement set quality and adherence to the developers Code of Conduct. QA Team handles unwelcome concepts, claim questions, DevQuest ideas, QA sub-team involvement, and other Developer Code of Conduct related issues. You can check out the Weekly Wrap posts for more information on what QA has been working on recently.

[QA Weekly Wrap: August 12th, 2021 - August 19th, 2021](https://retroachievements.org/viewtopic.php?t=13684)<br>
[QA Weekly Wrap: August 19th, 2021 - August 26th, 2021](https://retroachievements.org/viewtopic.php?t=13725)<br>
[QA Weekly Wrap: August 26th, 2021 - Sept 2nd, 2021](https://retroachievements.org/viewtopic.php?t=13751)<br>
[QA Weekly Wrap: Sept 2nd, 2021 - Sept 9th, 2021](https://retroachievements.org/viewtopic.php?t=13847)<br>
[QA Weekly Wrap: Sept 9th, 2021 - Sept 17th, 2021](https://retroachievements.org/viewtopic.php?t=13899)<br>
[QA Weekly Wrap: Sept 18th, 2021 - Sept 22nd, 2021](https://retroachievements.org/viewtopic.php?t=13946)<br>
[QA Weekly Wrap: Sept 25th, 2021 - Oct 7th, 2021](https://retroachievements.org/viewtopic.php?t=14086)<br>
[QA Weekly Wrap: Oct 8th, 2021 - Oct 14th, 2021](https://retroachievements.org/viewtopic.php?t=14148)<br>
[QA Weekly Wrap: Oct 14th, 2021 - Oct 21st, 2021](https://retroachievements.org/viewtopic.php?t=14213)<br>
[QA Weekly Wrap: Oct 21st, 2021 - Nov 21st, 2021](https://retroachievements.org/viewtopic.php?t=14394)<br>
[QA Weekly Wrap: Nov 22nd, 2021 - Dec 4th, 2021](https://retroachievements.org/viewtopic.php?t=14466)<br>
[QA Weekly Wrap: Dec 5th, 2021 - Dec 11th, 2021](https://retroachievements.org/viewtopic.php?t=14511)<br>
[QA Weekly Wrap: Dec 12th, 2021 - Dec 18th, 2021](https://retroachievements.org/viewtopic.php?t=14616)<br>
[QA Weekly Wrap: Dec 19th, 2021 - Dec 25th, 2021](https://retroachievements.org/viewtopic.php?t=14675)<br>
[QA Weekly Wrap: Dec 26th, 2021 - Jan 1st, 2022](https://retroachievements.org/viewtopic.php?t=14757)<br>

# Events

## Ongoing Events
* Achievement of the Week
  * Hosted by: {% rauserpic ikki5 %} & {% rauserpic Flara %}
* Challenge League
  * Hosted by: {% rauserpic SnowPin %}
  * Current challenges:
    * #1 - Leapforg
    * #2 - Unwanted
    * #3 - Peakstreak
    * #4 - BINGO!
    * #5 - CL3 x VGM
    * #6 - Ticket to Ride
    * #7 - Devember
    * #7 - Daily Distractions (7 Days)
* Communiplay
  * Hosted by: {% rauserpic SporyTike %}
* Daily DistRActions
  * Hosted by: {% rauserpic Bendyhuman %}
  * Currently 1st place (with 21 points):
    * {% rauserpic Akai %}
    * {% rauserpic AuburnRDM %}
    * {% rauserpic freezestar %}
    * {% rauserpic Ideasds %}
    * {% rauserpic NEOMAR %}
    * {% rauserpic Olafur %}
    * {% rauserpic Retrokaiser %}
    * {% rauserpic Searo %}
    * {% rauserpic Shmelyoff %}
    * {% rauserpic Xymjak %}
* DevQuest
  * Hosted by: {% rauserpic QATeam %}
  * Current Quests:
    * #001: Ticket Massacre - 5 developers awarded.
    * #002: Summer Set Repair - 10 developers awarded.
    * #003: One Single Condition - 21 developers awarded.
    * #004: Veteran Developer - 4 developers awarded.
    * #005: Trigger Happy - 3 developers awarded.
    * #006: The Unwanted - 17 developers awarded.
    * #007: Most Wanted - 13 developers awarded.
    * #008: World Traveler - 5 developers awarded.
    * #009: Launch Party! - 32 developers awarded.
    * #010: It Takes Two - 0 developers awarded.
    * #011: Happy Birthday RA! - 7 developers awarded.
* Leaderboard of the Month
  * Hosted by: {% rauserpic Searo %}
  * Current results:
    * 1st: {% rauserpic multonic %} - 85 points
    * 2nd: {% rauserpic Xymjak %} - 65 Points
    * 3rd: {% rauserpic Keltron3030 %} - 50 Points
* Master of the Month
  * Hosted by: {% rauserpic JAM %}
* Peak Streak
  * Hosted by: {% rauserpic Bendyhuman %}
  * Currently 1st place, finished previous month with 223 points:
    * {% rauserpic YahwehTzVaoth %}
* Simple Monthly Master
  * Hosted by: {% rauserpic Hotscrock %}
* The Unwanted
  * Hosted by: {% rauserpic SlashTangent %}, {% rauserpic televandalist %} and {% rauserpic StingX2 %}

## Completed Events
* 2021 Retro Olympics - Spring Edition
  * Hosted by: {% rauserpic voiceofautumn %} & {% rauserpic Searo %}
  * Results: 
    * Gold: {% rauserpic Gamechamp %}
    * Silver: {% rauserpic TheoVellum %}
    * Bronze: {% rauserpic Bendyhuman %}
* Devember 2.0
  * Hosted by: {% rauserpic SlashTangent %} & {% rauserpic wilhitewarrior %}
  * Results:
    * 824 tickets closed/resolved.
    * 63 Inactive Developers freed of tickets.
    * 41 developers qualified for event badge.
    * More information [here](./devember.html).
* RA Family Feud
  * Hosted by: {% rauserpic StingX2 %}
  * Results:
    * Team I Hate SM64: Pampa, Blotch, VenHur, Tayadaoc [419] 
    * Team Wahoo: Haruda & Pampa50 & Adamjohnny5 [350]
    * Killer Yoshis That Love: Bendyhuman, Draco655 [348]
    * Midcore Team: tinycyan, Venhur [318]
    * America's Favorite Cat: adamjohnny5, Terrorvan [197]
    * Where Is The Dragon Eggs: Snowpin & Draco655 & DanielARP [72]
    * Team Damageless: Spory, Shinx, Daniel, TheRecognitionScene [0]
    * Team Spoon: wilhitewarrior, RyanRJ, Pebete [0]
* Retro Battle
  * Hosted by: {% rauserpic Thoreau %}
  * Results:
    * RB1 winner:  {% rauserpic HolyShinx %}
    * RB2 winner:  {% rauserpic Bendyhuman %}
    * RB3 winner:  {% rauserpic TheoVellum %}
    * RB4 winner:  {% rauserpic MatheusBrazuca85 %}
    * RB5 winner:  {% rauserpic Draco655 %}
    * RB6 winner:  {% rauserpic HolyShinx %}
    * RB7 winner:  {% rauserpic betinho006 %}
* The Big Achievement 2020
  * Hosted by: {% rauserpic televandalist %}
  * Badges created and awarded.
  * Results:
    * 3 Platinum winners.
    * 1 Gold winner.
    * 3 Silver winners.
    * 9 Bronze winners.
* The Great Jacko
  * Hosted by: {% rauserpic StingX2 %} & {% rauserpic DanielARP %}
  * Results:
    * 8 developers qualify for event badge.
    * 31 set revisions completed
* VGM 8
  * Hosted by: {% rauserpic WateredWillow %}
  * Results:
    * 1st: {% rauserpic Salsa %}
    * 2nd: {% rauserpic Pelouch %}
    * 3rd: {% rauserpic JAM %}

# Discord Updates

In an effort to improve and organize the overall discord experience we have created several new roles and channels for the users. Here are the roles and channels that were added in the past year, as well a general purpose for them.

## Role Additions

| Role                | Purpose                                                                                     |
| :------------------ | :------------------------------------------------------------------------------------------ |
| @Art-Helper         | Users interested in helping complete art requests.                                          |
| @Art-Visitor        | Users given temp access to the art-discussion channel to discuss their art request results. |
| @Bomb-Squad         | User assisting mods in preventing drama and maintaining discord peace.                      |
| @Claims-Manager     | CobaltZeroni, tracking developer set claims.                                                |
| @CleanupTeam        | Users helping out with site cleanup actions.                                                |
| @DC Rollout         | Developers who are working on Dreamcast sets for the release of console support.            |
| @Peaker             | Top 3 users or the Peaker event.                                                            |
| @Play-Tester        | Users interested in playtesting developer sets before they release.                         |
| @QA-Team            | Users monitoring achievement set quality and adherence to the developers Code of Conduct.   |
| @RADocsTeam         | Users helping with revamping RADocs.                                                        |
| @RANews-Contributor | Users who have contributed to RANews.                                                       |
| @semi-weekly        | Users interested in semi weekly discussions.                                                |
| @TechTeamWeb        | Users helping with RAWeb updates and maintenance.                                           |
| @Unwanted           | Users who qualify for any tier of the current month of the Unwanted event.                  |
| @Writer             | Users helping out with writing requests.                                                    |

## Channel Additions

| Channel                  | Purpose                                                                                                                  |
| :----------------------- | :----------------------------------------------------------------------------------------------------------------------- |
| #admin-site-cleanup      | Request site cleanup actions that require admin action. Such as post edits, user verification, and forum topic transfer. |
| #aotw-voting             | Voting channel for current weeks Achievement of the Week winners.                                                        |
| #art-requests            | Post requests for achievement icons and badges.                                                                          |
| #bombsquad               | Bombsquad user discussion.                                                                                               |
| #claims                  | Developer related claim discussion.                                                                                      |
| #daily-distractions      | Daily DistRActions event discussion.                                                                                     |
| #devquest                | DevQuest discussion.                                                                                                     |
| #github-discussions      | Webhook channel for GitHub discussions.                                                                                  |
| #netplay                 | A place to coordinate netplay sessions with friends.                                                                     |
| #play-testers            | Playtester discussion.                                                                                                   |
| #qa-inbox                | Messages to QATeam user get forwarded here.                                                                              |
| #qa-log                  | Log channel for notable QATeam events.                                                                                   |
| #qa-team                 | QATeam discussion.                                                                                                       |
| #radocs                  | RADocs revamp discussion.                                                                                                |
| #ranews-cover-voting     | RANews cover voting for contributors.                                                                                    |
| #ranews-inbox            | Messages to RANews user get forwarded here.                                                                              |
| #ranews-team             | RANews discussion.                                                                                                       |
| #rapatches               | RAPatches discussion and workplace.                                                                                      |
| #rollout                 | Sega Dreamcast discussion and rollout.                                                                                   |
| #site-cleanup            | Request site cleanup actions for developers to perform. Such as linking games to hubs.                                   |
| #site-cleanup-discussion | Site Cleanup discussion.                                                                                                 |
| #twitter-team            | RA twitter discussion.                                                                                                   |
| #writing                 | Handling spelling/grammatical errors in achievement titles/descriptions and other related tasks.                         |
| #writing-requests        | Writing requests to be handled by the Writing team.                                                                      |

# RANews
* 1 Year Anniversary in August.
* New Sections:
  * Top Mastery
  * RAdvantage
  * RA Spotlight
  * RAnniverseries
  * Wish this Set

# RAPatches
The RAPatches repo was created this year to organize and centralize where users can download various ROM patch files. This repo includes ROM hacks, translations, bonus, multi, subset, and various other patches. Here is a breakdown of patches and unique entries by system. 

| System               | # of Patches | # of Entries |
| :------------------- | :----------- | :----------- |
| 32X                  | 1            | 1            |
| Atari 2600           | 5            | 5            |
| Game Boy             | 69           | 50           |
| Game Boy Advance     | 227          | 158          |
| Game Boy Color       | 43           | 33           |
| Game Gear            | 19           | 18           |
| Mega Drive/Genesis   | 275          | 213          |
| MSX                  | 1            | 1            |
| Nintendo 64          | 339          | 115          |
| Nintendo DS          | 27           | 22           |
| NES                  | 392          | 234          |
| Neo Geo Pocket Color | 2            | 2            |
| PC-8801              | 2            | 2            |
| PC Engine            | 9            | 6            |
| Pokemon Mini         | 5            | 5            |
| PlayStation          | 21           | 10           |
| PlayStation Portable | 4            | 3            |
| Sega Master System   | 25           | 16           |
| SNES                 | 919          | 531          |
| Virtual Boy          | 3            | 3            |
| WonderSwan           | 6            | 5            |
| Watara Supervision   | 4            | 4            |
| **Total**            | **2,398**    | **1,437**    |

# RAGuide
The [RAGuide Wiki](https://github.com/RetroAchievements/guides/wiki) allowes users to create and share set guides with the rest of community. If you are interested in created guide head on over to the [RAGuide Wiki](https://github.com/RetroAchievements/guides/wiki) and create a new page to start working on one. In the meantime, check out the guides that were created this year.

<a class="gameicon-link" href="https://retroachievements.org/game/10157" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/039082.png" alt="Harvest Moon 64 (Nintendo 64)"> <span>Harvest Moon 64 (Nintendo 64)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Harvest-Moon-64-(Nintendo-64)) by {% rauserpic ikki5 %}

<a class="gameicon-link" href="https://retroachievements.org/game/14221" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/045707.png" alt="Wario Land II (Game Boy Color)"> <span>Wario Land II (Game Boy Color)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Wario-Land-II-(Game-Boy-Color)) by {% rauserpic Nepiki %}

<a class="gameicon-link" href="https://retroachievements.org/game/17454" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/045872.png" alt="~Prototype~ Biohazard 2 | Resident Evil 1.5 (PlayStation)"> <span>~Prototype~ Biohazard 2 | Resident Evil 1.5 (PlayStation)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Resident-Evil-1.5-(Prototype)-(PlayStation)) by {% rauserpic Soulsderfuchs %}

<a class="gameicon-link" href="https://retroachievements.org/game/5108" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/051742.png" alt="Bomberman Quest (Game Boy Color)"> <span>Bomberman Quest (Game Boy Color)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Bomberman-Quest-(Game-Boy-Color)) by {% rauserpic Nepiki %}

<a class="gameicon-link" href="https://retroachievements.org/game/3652" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/045598.png" alt="Densetsu no Stafy 2 (Game Boy Advance)"> <span>Densetsu no Stafy 2 (Game Boy Advance)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Densetsu-no-Stafy-2-(Game-Boy-Advance)) by {% rauserpic Dimedime %}

<a class="gameicon-link" href="https://retroachievements.org/game/11254" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/017724.png" alt="Lunar: Silver Star Story Complete (PlayStation)"> <span>Lunar: Silver Star Story Complete (PlayStation)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Lunar,-Silver-Star-Story-Complete-(PlayStation)) by {% rauserpic televandalist %}

<a class="gameicon-link" href="https://retroachievements.org/game/17461" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/042166.png" alt="Karate (Atari 2600)"> <span>Karate (Atari 2600)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Karate-(Atari-2600)) by {% rauserpic Schlim %}

<a class="gameicon-link" href="https://retroachievements.org/game/3528" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/033366.png" alt="Final Fantasy IV (SNES)"> <span>Final Fantasy IV (SNES)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Final-Fantasy-IV-(J)-(SNES)) by {% rauserpic bdjeffyp %}

<a class="gameicon-link" href="https://retroachievements.org/game/9725" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/049676.png" alt="Wendy: Every Witch Way (Game Boy Color)"> <span>Wendy: Every Witch Way (Game Boy Color)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/Wendy-Every-Witch-Way-(Game-Boy-Color)) by {% rauserpic Nepiki %}

<a class="gameicon-link" href="https://retroachievements.org/game/355" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/032817.png" alt="Legend of Zelda, The: A Link to the Past (SNES)"> <span>Legend of Zelda, The: A Link to the Past (SNES)</span></a>
[Guide](https://github.com/RetroAchievements/guides/wiki/The-Legend-of-Zelda,-A-Link-to-the-Past-(SNES)) by {% rauserpic Nepiki %}


# RABot
  * Discord rules updated in the `rules` command. - {% rauserpic meleu %}
  * Junior Developer role added to the `user` command. - {% rauserpic televandalist %}
  * `ResetNextIf`, `SubHits`, `Trigger`, & `BCD` added to the `mem` command. - {% rauserpic MrOwnership %}
  * `contact` command created for RAdmin, QATeam, & RANews users. - {% rauserpic meleu %}
  * `bestdays` command fixed. - {% rauserpic MrOwnership %}

# RAWeb
While we didn't a new major version of the site this year, there were still a lot of features and updates made to the current version. Big thanks to {% rauserpic luchaos %} & {% rauserpic meleu %} for maintaining the repo, addressing Pull Requests, deploying new updates, and providing overall maintenance on the site. Check out what updates have been made this year and who was responsible for them.

* GetUserCompletedGames API added. - {% rauserpic bdjeffyp %}
* Include total ranks users in GetUserSummary and GetUserRankAndScore APIs. - [fabricecaruso](https://github.com/fabricecaruso)
* Store and display user who linked a hash. - {% rauserpic luchaos %}
* Validate new consoles. - {% rauserpic televandalist %} & {% rauserpic luchaos %}
* Allow admins to pull winners of an achievements during any time frame. - {% rauserpic MrOwnership %}
* Most Requested Sets link added back to toolbar with performance fix. - {% rauserpic MrOwnership %}
* Sever achievement comment colors muted - {% rauserpic luchaos %}
* Sever comment added when leaderboard actions are taken. - {% rauserpic Searo %}
* Show untracked as Site Rank on untracked user's tooltip. - {% rauserpic Searo %}
* Remove events and hubs from user average completion. - {% rauserpic Searo %}
* `ResetNextIf`, `SubHits`, `Trigger`, & `BCD` added to mem explained section. - {% rauserpic MrOwnership %}
* Core and Unofficial filter added to Ticket Manager. - {% rauserpic MrOwnership %}
* Exclude 0 points users form recalc cronjob. - {% rauserpic Searo %}
* Leaderboard ties share correct rank. - {% rauserpic Searo %}
* Similar games duplicate ID fix. - {% rauserpic MrOwnership %}
* Adjust ranking requirements to 500 points. - {% rauserpic MrOwnership %}
* Twitch embed fix. - {% rauserpic luchaos %}
* Leaderboard authorship added. - {% rauserpic Searo %}
* Cap leaderboard duplication to 25. - {% rauserpic MrOwnership %}
* Add pagination to leaderboard results. - {% rauserpic Searo %}
* Site rank percentage now has 2 decimal point precision. - {% rauserpic meleu %}
* "More Info" section redesigned. - {% rauserpic  Krylan %}
* Add pagination to topic list on forum. - {% rauserpic  Krylan %}
* Fix checksum dropdown from showing user who linked it. - {% rauserpic meleu %}
* Replace MD5 with the term hash. - {% rauserpic meleu %}
* Page responsiveness fix. - {% rauserpic  Krylan %}
* Added `ticket` bbcode tag. - {% rauserpic AlmightyXor %}
* Added 'My Sets' and 'My Tickets' links to the 'My Pages' dropdown. - {% rauserpic AlmightyXor %}
* Render smaller charts on mobile. - {% rauserpic  Krylan %}
* Assign placeholders and remove watermark.js. - {% rauserpic  Krylan %}
* Repurpose the Super User role into a Junior Developer role. - {% rauserpic MrOwnership %}
* Sticky status message. - {% rauserpic luchaos %}
* Fix reset all progress when `--` is selected. - {% rauserpic luchaos %}
* Achievement reset confirmation added. - {% rauserpic luchaos %}
* Update lbinfo call and GetLeaderboardData to allow showing around user entry in overlay. - {% rauserpic Searo %}
* Fix the ellipses display on forum activity for the home page. - {% rauserpic JeffJenkins %}
* Include unofficial achievements in ticket counts, but not achievement counts. - {% rauserpic JeffJenkins %}
* Escape achievement description for attributes. - {% rauserpic JeffJenkins %}
* Add confirmation for achievement promotion/demotion. - {% rauserpic JeffJenkins %}
* Place active players in rank order. - {% rauserpic JeffJenkins %}
* Add achievement sort by last updated. - {% rauserpic JeffJenkins %}
* Exclude the unofficial achievements from the total count in the Reset Game Progress dropdown. - {% rauserpic JeffJenkins %}
* Increase input length for comments. - {% rauserpic JeffJenkins %}
* Fix for Leaderboards with no entries. - {% rauserpic MrOwnership %}
* Improve GitHub issue template config. - {% rauserpic luchaos %}
* Force user to choose mode for a ticket (hardcore/softcore), mode ticket filtering added. - {% rauserpic Xymjak %}
* Links to supplementary ticket info are now provided after certain fields. - {% rauserpic AlmightyXor %}
* Fix comments permissions. - {% rauserpic luchaos %}
* Refactor and add filtering to the "Active Players" widget. - {% rauserpic AlmightyXor %}
* News carousel arrows no longer overlap with the menu. - {% rauserpic AlmightyXor %}
* Escape apostrophes for embedded user content. - {% rauserpic JeffJenkins %}
* Add textarea character counter. - {% rauserpic JeffJenkins %}
* Immediately update rich presence when starting a new session. - {% rauserpic Jamiras %}
* Fix incorrect key for hardcore check in gamecompare page. - {% rauserpic Jamiras %}
* Add AchievementsRemaining to awardachievement API. - {% rauserpic Jamiras %}
* More descriptive email messages. - {% rauserpic Jamiras %}
* Site Award Image Hosting Update. - {% rauserpic MrOwnership %} & {% rauserpic luchaos %}
* Include LowerIsBetter in leaderboard patchdata. - {% rauserpic Jamiras %}
* Load minified jQuery scripts. - [coliff](https://github.com/coliff)
* Devs can now close a ticket as a mistaken report. - {% rauserpic AlmightyXor %}
* Make dorequest?r=login behave like login_app. - {% rauserpic Jamiras %}
* Don't hide forum topics if last post is from an unverified user. - {% rauserpic Jamiras %}
* Add copyright ROMs disclaimer to forum post plceholders. - {% rauserpic televandalist %}
* Prevent blocked users from sending private messages. - {% rauserpic Jamiras %}
* Fix first place display when an Untracked user is tied. - {% rauserpic Searo %}
* Add confirmation prompt when creating official forum topic. - {% rauserpic Jamiras %}
* Add an empty cell under the Last Updated column. - {% rauserpic LordAndrew %}
* Show leaderboards with no entries on game page. - {% rauserpic Jamiras %}
* Allow official forum topic sidebar link when not logged in. - {% rauserpic Jamiras %}
* Show recent players on game page. - {% rauserpic Jamiras %}
* Add uploadleaderboard dorequest api. - {% rauserpic Jamiras %}
* Don't show leaderboards with DisplayOrder<0 on game pages. - {% rauserpic Jamiras %}
* Don't show banned users in recent players list. - {% rauserpic Jamiras %}
* Fix bbcode URL parsing for embeddable services. - {% rauserpic luchaos %}
* Fix escaping of apostrophes and newlines in inbox. - {% rauserpic Jamiras %}
* Use thunderer/shortcode for shortcode processing. - {% rauserpic Jamiras %}
* Remove aggressive sanitization from achievements; fix escaping for tooltips. - {% rauserpic Jamiras %}
* Remove Facebook integration. - {% rauserpic Jamiras %}
* Revert shortcodes within `code` blocks not being parsed. - {% rauserpic luchaos %}
* GetAchievementDistribution added. - {% rauserpic WCopeland %}
* Allow code notes to be accessed by registered users. - {% rauserpic Jamiras %}
* Add disclaimer to linked hashes page. - {% rauserpic Jamiras %}
* Rewrite trigger parser to support mixed case markers. - {% rauserpic Jamiras %}
* Fix history graph total points to only count core achievements. - {% rauserpic Searo %}
* Set data type to boolean for hidden leaderboard. - {% rauserpic Jamiras %}
* Fix user history query. - {% rauserpic luchaos %}

# Development Tool Updates
Without the work of {% rauserpic Jamiras %} we would still be stuck in the stone age of achievement development and toolkit features. There are no amount of words that express the appreciation and gratitude that we all have for all the time and effort he puts into this community. Check out the major updates to development tools and emulators that he has provided this year.

## RAIntegration
* [Version 0.79](https://github.com/RetroAchievements/RAIntegration/releases/tag/RAIntegration.0.79) - Released on 5/22/2021
  * Lots in this version, check the link for more details.
* [Version 0.79.1](https://github.com/RetroAchievements/RAIntegration/releases/tag/RAIntegration.0.79.1) - Released on 5/26/2021
  * fix SHGetStockIconInfo not found error on WinXP
  * fix HitCounts not being hidden/shown when switching between achievements with/without AddSource
  * fix exception deleting all conditions from a published achievement
  * fix exception if selected group disappears when resetting achievement
  * fix display when more than 999 conditions or alt groups are present in an achievement
* [Version 0.79.2](https://github.com/RetroAchievements/RAIntegration/releases/tag/RAIntegration.0.79.2) - Released on 6/7/2021
  * hide challenge indicator when achievement is paused
  * sort "almost there" achievements by progress
  * fix invalid rich presence showing as "no rich presence available" on initial load
  * fix achievement category not reverting when promote/demote fails on the server
  * fix filters changing when creating new achievements
  * fix exception attempting to remove trigger group when no group selected
  * fix rich presence macro containing bitcount always returning zero
* [Version 0.79.3](https://github.com/RetroAchievements/RAIntegration/releases/tag/RAIntegration.0.79.3) - Released on 7/20/2021
  * highlight ranged notes in memory inspector
  * fix invalid operator error when changing the type of a condition with a hit target to something that doesn't have hit targets
  * generate z64 hash for n64 and v64 files (RAProject64)
  * fix challenge indicator disappearing when trigger uses ResetNextIf
  * prevent exception using pause-on-change for non-8-bit bookmarks
* [Version 0.79.4](https://github.com/RetroAchievements/RAIntegration/releases/tag/RAIntegration.0.79.4) - Released on 9/7/2021
  * adjust grid column widths for screen DPI
  * improve error message related to malformed leaderboard
  * update Intellivision memory map regions to account for non-8-bit addresses being exposed as 32-bit values
  * fix previous best leaderboard score showing up on wrong user when tied
  * fix bookmark value not updating when changing size while paused
  * fix code note size detection when note contains multiple substring matches

## RATools
* [Version 1.8.0](https://github.com/Jamiras/RATools/releases/tag/v1.8.0) - Released on 2/27/2021
  * dynamic recompilation (only process the parts of the script affected by changes)
  * several other optimizations around script processing
  * several minor improvements to better report the actual cause of an error
  * update analysis queries for website changes (NOTE: ticket list now requires setting a `Cookie` value in the ini file)
  * fix multiplication not being distributed over complex term
  * fix wrong condition being removed when two never() conditions overlap
  * fix PauseIf being removed from alt if it also exists in core
* [Version 1.8.1](https://github.com/Jamiras/RATools/releases/tag/v1.8.1) - Released on 5/9/2021
  * add `trigger_when()` function
  * add `deduct()` helper for `tally()` function
  * support scaling for modifier conditions (`AddSource`, `SubSource`, `AddAddress`)
  * support for hex constants (`hXX`) when deconstructing rich presence and leaderboards from server data
  * add copy to clipboard links for leaderboard title/description
  * fix `bitcount()` not being allowed in `prev()` and `prior()` functions
  * fix syntax highlighting in dictionary when not ordered by key
  * fix stack overflow evaluating very long chain of ANDed conditions
  * fix issue simplifying comparison with multiple constants
* [Version 1.8.2](https://github.com/Jamiras/RATools/releases/tag/v1.8.2) - Released on 8/22
  * add `disable_when()` function
  * add `any_of()`, `all_of()`, `none_of()`, and `sum_of()` functions
  * allow functions to have default parameters
  * allow functions to be assigned to variables
  * support for anonymous functions
  * support for collapsing duplicated rich presence strings into keyed ranges
  * improved badge handling for non-local achievements
  * modify underflow adjustment logic to generate statements that don't require underflow adjustment
  * for example [`a - b > n`] => [`b + n < a`] instead of [`a - b - n + max(b) > max(b)`]
  * add links to view user achievement history from game stats dialog
  * fix error indicator not updating when lines added/removed earlier in the script
  * fix goto source not going to the correct line when lines added/removed earlier in the script
  * fix scaled modifiers not supported in leaderboard values
  * fix indirect addresses not supported in `bit()` function
  * fix underflow adjustment for `prev()` comparisons
  * fix impossible comparison [`byte > 400`] affecting neighboring conditions

# Emulator Updates
## RALibretro
* [Version 1.3.5](https://github.com/RetroAchievements/RALibretro/releases/tag/1.3.5) - Released on 4/20/2021
  * support for new RetroArch save state container format
  * add yabause as a supported core (Sega Saturn)
  * add freeintv as a supported core (Intellivision)
  * add potator as a supported core (Watara Supervision)
  * add quicknes as a supported core (Nintendo Entertainment System)
  * add swanstation as a supported core (Playstation)
  * make video settings global
  * block additional core settings in hardcore
  * ignore header (if present) for Atari 7800 games
  * fix integer scaling when window menu wraps
  * fix log file not being written to correct directory when launched with full path
  * fix 100% CPU usage while paused
* [Version 1.3.6](https://github.com/RetroAchievements/RALibretro/releases/tag/1.3.6) - Released on 5/15/2021
  * add settings for fast forward speed and allow sound while fast forwarding
  * remove Gearsystem as supported core for Genesis
  * add PicoDrive as a supported core for Sega CD
  * add m3u to file filter for loading Sega CD games in Genesis Plus GX
  * fix memory map for FreeIntv core when using 0.79 dll
  * fix rendering issue in VecX hardware mode
  * fix crash when using FBNeo core after selecting a custom controller for a previous game
  * fix disc handling when m3u contains filenames longer than 128 characters
* [Version 1.3.7](https://github.com/RetroAchievements/RALibretro/releases/tag/1.3.7) - Released on 7/21/2021
  * allow SRAM size mismatch (prevents loss of save data for Sonic Delta 40MB)
  * generate z64 hash for n64 and v64 files
  * fix wrong color for cores using XRGB8888 when loading save state while paused
* [Version 1.3.8](https://github.com/RetroAchievements/RALibretro/releases/tag/1.3.8) - Released on 9/25/2021
  * Support for PlayStation Portable via the PPSSPP core
  * Support for core option categories
  * Support for core using preloaded ROM without duplicating it
  * Allow non-game CDs to be loaded without unloading game
  * Renamed SwanStation back to DuckStation
  * Timestamps added to log.txt
  * Fix throttling for cores with threaded audio
  * Fix issue where save state extension would be lost if path contained a period

## RANes
* [Version 1.0](https://github.com/RetroAchievements/RANes/releases/tag/RANes.1.0) - Released on 2/6/2021
  * Upgrade to official 2.3.0 release of FCEUX (15 Dec 2020)
  * x64 support
  * Fix leaderboard/achievement not resetting with emulator reset
  * Fix hashing of unif formatted ROMs
* [Version 1.1](https://github.com/RetroAchievements/RANes/releases/tag/RANes.1.1) - Released on 11/7/2021
  * Upgrade to official 2.5.0 release of FCEUX (21 Oct 2021)
  * Support for toolkit DLL larger than 2MB

## RAMeka
* [Version 1.0](https://github.com/RetroAchievements/RAMeka) - Released on 7/27/2021
  * Includes several compatibility improvements from upstream. Otherwise, as far as I can tell, there was one bugfix around custom skins, and one feature around stereo support for game gear audio.
  * Memory map has been updated for SG-1000 expanders (Dahjee at $2000, Othello/Castle at $4000). This makes Dahjee games work the same between RAMeka and Genesis Plus GX. Knightmare has been updated to use the new mapping, and Rally-X already supported both via alts. Genesis Plus GX does not map Othello/Castle correctly, and the other cores that support SG-1000 don't map either Dahjee or Othello/Castle at all.
  * RetroAchievements menu has been moved to the main window

## RASnes9x
* [Version 1.1](https://github.com/RetroAchievements/RASnes9x/releases/tag/RASnes9x.1.1) - Released on 12/5/2021
  * Upgrade to current (2021 Dec 4) master of Snes9x
  * Disallow forced PAL in hardcore
  * Support for >2MB RAIntegration.dll