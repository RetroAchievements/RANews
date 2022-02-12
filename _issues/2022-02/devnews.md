---
issue: 2022-02
order: 202202-12
layout: article
author: QATeam
title: DevNews
---

## Intro

What's happening with the developer side of the site.

## RAIntegration 1.0 Released 
**For players:**
- Measured achievements report raw values (instead of percentage) by default
- Fix percentage calculation for very large measured targets
- Fix issue where flickering challenge indicator could disappear entirely when fast forwarding
- Fix crash when attempting to display multiple challenge indicators in the same frame in RAProject64
- Fix display of unlocked achievement count when user has unlocked Unofficial achievements
- Prevent activating achievements if runtime was initialized for a console other than the game's console

**For developers:**
- Leaderboard editor
- New sizes: Float, MBF32, 16-bit BE, 24-bit BE, and 32-bit BE
- Add logical warnings (i.e. comparing 8-bit address to 16-bit number) to asset editor
- Search functionality should be slightly faster and use less memory
- Add tooltip to search results that displays the initial and last value of each search result
- Option to specify whether Measured achievements should show raw value or percentage
- Add ability to link hash from Test Compatibility mode
- New/Clone buttons prompt to disable hardcore instead of being disabled when in hardcore mode
- Freeze button text on bookmarks window changes to Unfreeze when only frozen bookmarks are selected
- Increase address column width in search results and bookmarks for systems with more than 16MB of RAM
- New built-in macros for Rich Presence: `@Number`, `@ASCIIChar`, `@UnicodeChar`, `@Seconds`, `@Minutes`, `@Float[1-6]`
- Fix disappearing search results in Text search mode
- Fix AddAddress resolution (tooltip/jump to address) not working after adding new conditions to achievement
- Fix Exclude Selected always using last page of results instead of selected page

[Full Changelog](https://github.com/RetroAchievements/RAIntegration/releases/tag/RAIntegration.1.0.0)

## RATools 1.8.3 Released
- add `true` and `false` constants for script logic (continue to use `always_true()` and `always_false()` for trigger definitions)
- add `word_be`, `tbyte_be`, and `dword_be` big-endian memory accessor functions
- add `max_of` helper function for `leaderboard` value clause
- add `rich_presence_macro` function
- support for floating point numbers
- support for writing leaderboards to local file (direct import to 0.80 DLL)
- support for generating code for leaderboards from New Script dialog
- add `format` parameter to `measured` function to support raw vs. percent display
- allow negative offsets when processing pointers
- allow `bcd()` to be called inside `prev()`
- allow `trigger(a || b)` to expand to alt groups
- allow loading file without a game id
- lookup entries that match the fallback value are no longer included in the generated Rich Presence script
- improved underflow adjustment calculations
- fix empty array/dictionary showing up orange
- fix loss of hit target when final condition of clause is optimized out
- fix loss of ResetIf when used in Measured value
- fix cannot apply Trigger to ResetIf error when using `never` inside `repeated` in `trigger_when`
- fix highlighting issue when pasting lines that start with combining characters (`&&`, `+`, ...)
- fix stack overflow processing very long chain of conditions
- fix maximum recursion error when processing very long AddSource chain inside `prev`
- fix maximum recursion error when editing the same function over and over
- fix crash updating local achievements when system culture uses comma as decimal separator
- fix stats not showing up without an ApiKey

[Full Changelog](https://github.com/Jamiras/RATools/releases/tag/v1.8.3)

## RAWeb 1.79 Released
- add lazy loading attribute to profile and game images outputted by JS by {% rauserpic Krylan %} in [#893](https://github.com/RetroAchievements/RAWeb/pull/893)
- Prefix URLs with (missing) https protocol by {% rauserpic luchaos %} in [#896](https://github.com/RetroAchievements/RAWeb/pull/896)
- prevent negative offset in lbinfo query by {% rauserpic Jamiras %} in [#897](https://github.com/RetroAchievements/RAWeb/pull/897)
- use different escaping function for Tip() by {% rauserpic Jamiras %} in [#895](https://github.com/RetroAchievements/RAWeb/pull/895)
- don't lookup notes for values by {% rauserpic Jamiras %} in [#894](https://github.com/RetroAchievements/RAWeb/pull/894)
- Sanitize tooltip output to prevent xss attacks by {% rauserpic Jamiras %} in [#900](https://github.com/RetroAchievements/RAWeb/pull/900)
- delay new forum post notifications from unverified users by {% rauserpic Jamiras %} in [#902](https://github.com/RetroAchievements/RAWeb/pull/902)
- make account deletion wording more verbose by {% rauserpic Jamiras %} in [#903](https://github.com/RetroAchievements/RAWeb/pull/903)
- add mature content warning by {% rauserpic Jamiras %} in [#904](https://github.com/RetroAchievements/RAWeb/pull/904)
- Prevent shortcode parser changing case … by {% rauserpic Jamiras %} in [#899](https://github.com/RetroAchievements/RAWeb/pull/899)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/releases/tag/1.79.0)

## Developer Tips
{% rauserpic Searo %} is compiling a list of developer tips & advice, if you'd like to contribute, reach out to him!

## RAScript Tutorial
{% rauserpic Etron %} has started a RAScript tutorial series that can be found [here](rascript.html) in RANews or [here](https://github.com/Etron-RA/RetroAchievements/tree/main/Tutorials) on Etron's GitHub repo.

## QA Weekly Wrap

Check out what the QA Team has been up to as of the last month.

- [QA Weekly Wrap: Jan 2nd, 2021 - Jan 8th, 2022](https://retroachievements.org/viewtopic.php?t=14845)
- [QA Weekly Wrap: Jan 9th, 2022 - Jan 15th, 2022](https://retroachievements.org/viewtopic.php?t=14942)
- [QA Weekly Wrap: Jan 16th, 2022 - Jan 22nd, 2022](https://retroachievements.org/viewtopic.php?t=15025)
- [QA Weekly Wrap: Jan 23rd, 2022 - Jan 29th, 2022](https://retroachievements.org/viewtopic.php?t=15106)