---
issue: 2023-02
order: 202302-12
layout: article
author: RANews
title: Community News
toc: true
---

## Site Updates

### RAWeb v2.5.0
- Completion/mastery icons for game progress bars by [@EmoonX](https://github.com/EmoonX) in [#1281](https://github.com/RetroAchievements/RAWeb/pull/1281)
- Stylized categories/subsets in game titles by [@EmoonX](https://github.com/EmoonX) in [#1274](https://github.com/RetroAchievements/RAWeb/pull/1274)
- Add Other emulator filter in ticket manager by [@Jamiras](https://github.com/Jamiras) in [#1264](https://github.com/RetroAchievements/RAWeb/pull/1264)
- Fix wrapping in Claims lists on front page by [@luchaos](https://github.com/luchaos) in [#1291](https://github.com/RetroAchievements/RAWeb/pull/1291)
- Show hidden awards count in award header tooltips on user page [@EmoonX](https://github.com/EmoonX) in [#1271](https://github.com/RetroAchievements/RAWeb/pull/1271)
- Better ordering for Completion Progress list on user page by [@EmoonX](https://github.com/EmoonX) in [#1282](https://github.com/RetroAchievements/RAWeb/pull/1282)
- Add admin page for viewing player progress through an achievement set by [@Jamiras](https://github.com/Jamiras) in [#1280](https://github.com/RetroAchievements/RAWeb/pull/1280)
- Fix forum pagination when many unverified posts exist by [@Jamiras](https://github.com/Jamiras) in [#1279](https://github.com/RetroAchievements/RAWeb/pull/1279)
- Adjust page links to multiple of page size when providing custom offset by [@Jamiras](https://github.com/Jamiras) in [#1276](https://github.com/RetroAchievements/RAWeb/pull/1276)
- Hide user pages for banned/spam accounts by [@luchaos](https://github.com/luchaos) in [#1290](https://github.com/RetroAchievements/RAWeb/pull/1290)
- Prevent logging of invalid image exceptions by [@Jamiras](https://github.com/Jamiras) in [#1277](https://github.com/RetroAchievements/RAWeb/pull/1277)
- Ensure achievements with no hardcore unlocks get their true ratio recalculated by [@Jamiras](https://github.com/Jamiras) in [#1286](https://github.com/RetroAchievements/RAWeb/pull/1286)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/compare/2.4.1...2.5.0)

### RAWeb v2.6.0
- Fix progress bar completion icon alignment by [@luchaos](https://github.com/luchaos) in [#1296](https://github.com/RetroAchievements/RAWeb/pull/1296)
- Make stylized tags use game title text color by [@EmoonX](https://github.com/EmoonX) in [#1304](https://github.com/RetroAchievements/RAWeb/pull/1304)
- Move stylized tags to end of game title by [@luchaos](https://github.com/luchaos) in [#1297](https://github.com/RetroAchievements/RAWeb/pull/1297)
- Apply stylized tags to mature content warning page by [@Jamiras](https://github.com/Jamiras) in [#1306](https://github.com/RetroAchievements/RAWeb/pull/1306)
- Apply stylized tag to breadcrumbs by [@Jamiras](https://github.com/Jamiras) in [#1307](https://github.com/RetroAchievements/RAWeb/pull/1307)
- Theme aware main menu by [@luchaos](https://github.com/luchaos) in [#1299](https://github.com/RetroAchievements/RAWeb/pull/1299)
- Add box shadows to main menu dropdowns and tooltips by [@luchaos](https://github.com/luchaos) in [#1303](https://github.com/RetroAchievements/RAWeb/pull/1303)
- Hide game progress if game has no achievements by [@Jamiras](https://github.com/Jamiras) in [#1301](https://github.com/RetroAchievements/RAWeb/pull/1301)
- Include game name in page titles for game subpages by [@Jamiras](https://github.com/Jamiras) in [#1302](https://github.com/RetroAchievements/RAWeb/pull/1302)
- Use cards for game award tooltips by [@Jamiras](https://github.com/Jamiras) in [#1300](https://github.com/RetroAchievements/RAWeb/pull/1300)
- Revoke mastery badge when resetting achievements for a set by [@Jamiras](https://github.com/Jamiras) in [#1298](https://github.com/RetroAchievements/RAWeb/pull/1298)
- Fix ticket indicator not showing up for junior developers by [@Jamiras](https://github.com/Jamiras) in [#1308](https://github.com/RetroAchievements/RAWeb/pull/1308)
- Move lib functions into app_legacy subdirectory by [@luchaos](https://github.com/luchaos) in [#1285](https://github.com/RetroAchievements/RAWeb/pull/1285)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/compare/2.5.0...2.6.0)

### RAWeb v2.7.0
- Stylized [m] in achievement titles by [@EmoonX](https://github.com/EmoonX) in [#1315](https://github.com/RetroAchievements/RAWeb/pull/1315)
- Separate main/subset links in breadcrumbs by [@EmoonX](https://github.com/EmoonX) in [#1314](https://github.com/RetroAchievements/RAWeb/pull/1314)
- Add API_GetUserPoints.php endpoint by [@wescopeland](https://github.com/wescopeland) in [#1319](https://github.com/RetroAchievements/RAWeb/pull/1319)
- Revert unintentional changes to API_GetUserCompletedGames.php response by [@Jamiras](https://github.com/Jamiras) in [#1316](https://github.com/RetroAchievements/RAWeb/pull/1316)
- Fix mastery date sometimes not showing in tooltip by [@Jamiras](https://github.com/Jamiras) in [#1310](https://github.com/RetroAchievements/RAWeb/pull/1310)
- Fix site award not awarded if user recently earned achievement with same ID by [@Jamiras](https://github.com/Jamiras) in [#1311](https://github.com/RetroAchievements/RAWeb/pull/1311)
- Fix recalculation of true ratios not ignoring untracked users by [@Jamiras](https://github.com/Jamiras) in [#1322](https://github.com/RetroAchievements/RAWeb/pull/1322)

[Full Changelog](https://github.com/RetroAchievements/RAWeb/compare/2.6.0...2.7.0)

## RATools Updates

### RATools 1.11.0 has been released
- Add `mbf32_le` function
- Add `substring` function
- Add `ascii_string_equals` and `unicode_string_equals` functions
- Add XOR operator (`^`)
- Add bitwise invert operator (`~`)
- Add horizontal scrollbar when file is sufficiently wide
- Ability to select entire lines by clicking on line number
- Support for merging bits into bitcount when pointers are involved
- Fix corruption of local notes containing newlines
- Fix dumping game using masked pointers
- Fix exception dumping game with no achievements or leaderboards
- Fix exception dumping game with incomplete leaderboards (one or more blank fields)
- Fix exception dumping rich presence with whitespace at the top of the file

[Full Changelog](https://github.com/Jamiras/RATools/releases/tag/v1.11.0)

## DevQuest

### DevQuest Awards

<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/15947" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/043647.png"
                        alt="[DevQuest 004] Veteran Deveoper"> <span>[DevQuest 004] Veteran Developer</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="3">{% rauserpic voiceofautumn %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/17758" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/046249.png"
                        alt="[DevQuest 007] Most Wanted"> <span>[DevQuest 007] Most Wanted</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic Excessiveiser %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/10170" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/000000.png"
                        alt="Beetle Adventure Racing! | HSV Adventure Racing! (Nintendo 64)"> <span>Beetle Adventure
                        Racing! | HSV Adventure Racing! (Nintendo 64)</span></a></td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/15918" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/047727.png"
                        alt="[DevQuest 008] World Traveler"> <span>[DevQuest 008] World Traveler</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="2">{% rauserpic gollawiz %}</td>
            <td colspan="2"><a class="gameicon-link" href="https://retroachievements.org/game/5800" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/066456.png"
                        alt="Dragon Quest V (PlayStation 2)"> <span>Dragon Quest V (PlayStation 2)</span></a></td>
        </tr>
        <tr>
            <td colspan="2"><a class="gameicon-link" href="https://retroachievements.org/game/17780" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/059811.png"
                        alt="Dr. Slump (PlayStation)"> <span>Dr. Slump (PlayStation)</span></a></td>
        </tr>
        <tr>
            <td rowspan="3">{% rauserpic WanderingHeiho %}</td>
            <td colspan="2"><a class="gameicon-link" href="https://retroachievements.org/game/4828" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/057022.png"
                        alt="Penguin Wars | Pengin-kun WARS (NES)"> <span>Penguin Wars | Pengin-kun WARS
                        (NES)</span></a></td>
        </tr>
        <tr>
            <td colspan="2"><a class="gameicon-link" href="https://retroachievements.org/game/3999" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/057745.png"
                        alt="Nayuta no Kiseki (PlayStation Portable)"> <span>Nayuta no Kiseki (PlayStation
                        Portable)</span></a></td>
        </tr>
        <tr>
            <td colspan="2"><a class="gameicon-link" href="https://retroachievements.org/game/17363" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/041079.png"
                        alt="Ys: The Vanished Omens (MSX)"> <span>Ys: The Vanished Omens (MSX)</span></a></td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/15939" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/049337.png"
                        alt="[DevQuest 010] It Takes Two"> <span>[DevQuest 010] It Takes Two</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="2">{% rauserpic Delmaru %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/2780" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/061468.png"
                        alt="Kingdom Hearts: Final Mix (PlayStation 2)"> <span>Kingdom Hearts: Final Mix (PlayStation
                        2)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/3030" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/067021.png"
                        alt="Shin Megami Tensei: Persona 4 (PlayStation 2)"> <span>Shin Megami Tensei: Persona 4
                        (PlayStation 2)</span></a></td>
        </tr>
        <tr>
            <td rowspan="2">{% rauserpic FRAN269 %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/21869" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/065218.png"
                        alt="Crazy Frog Racer (PlayStation 2)"> <span>Crazy Frog Racer (PlayStation 2)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/20854" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/065856.png"
                        alt="Incredibles, The (PlayStation 2)"> <span>Incredibles, The (PlayStation 2)</span></a></td>
        </tr>
        <tr>
            <td rowspan="2">{% rauserpic gollawiz %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/20277" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/060733.png"
                        alt="Super Mario Advance 4: Super Mario Bros. 3 (Game Boy Advance)"> <span>Super Mario Advance
                        4: Super Mario Bros. 3 (Game Boy Advance)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/3070" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/061494.png"
                        alt="Ratchet & Clank (PlayStation 2)"> <span>Ratchet & Clank (PlayStation 2)</span></a></td>
        </tr>
        <tr>
            <td rowspan="2">{% rauserpic Fridge %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/3343" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/061818.png"
                        alt="Hot Shots Golf 3 (PlayStation 2)"> <span>Hot Shots Golf 3 (PlayStation 2)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/3070" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/061494.png"
                        alt="Ratchet & Clank (PlayStation 2)"> <span>Ratchet & Clank (PlayStation 2)</span></a></td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/1280" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/049821.png"
                        alt="[DevQuest 011] Happy Birthday RA!"> <span>[DevQuest 011] Happy Birthday RA!</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic TheMysticalOne %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/2438" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/066608.png"
                        alt="Dungeons & Dragons: Warriors of the Eternal Sun (Mega Drive)"> <span>Dungeons & Dragons:
                        Warriors of the Eternal Sun (Mega Drive)</span></a></td>
        </tr>
        <tr>
            <td>{% rauserpic suspect15 %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/4499" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/066510.png"
                        alt="Warlock (Mega Drive)"> <span>Warlock (Mega Drive)</span></a></td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/672" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/052519.png"
                        alt="[DevQuest 012] Hacker's Habit"> <span>[DevQuest 012] Hacker's Habit</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="2">{% rauserpic Bryan1150 %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/16196" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/066999.png"
                        alt="~Hack~ Pokemon Renegade Platinum (Nintendo DS)"> <span>~Hack~ Pokemon Renegade Platinum
                        (Nintendo DS)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/17844" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/065335.png"
                        alt="~Hack~ CTGP: Nitro (Nintendo DS)"> <span>~Hack~ CTGP: Nitro (Nintendo DS)</span></a></td>
        </tr>
        <tr>
            <td rowspan="2">{% rauserpic Delmaru %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/17841" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/063271.png"
                        alt="~Hack~ Mario Kart Zero (Nintendo DS)"> <span>~Hack~ Mario Kart Zero (Nintendo
                        DS)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/17050" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/066466.png"
                        alt="~Hack~ Legend of Zelda, The: A New Light (NES)"> <span>~Hack~ Legend of Zelda, The: A New
                        Light (NES)</span></a></td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/809" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/068013.png"
                        alt="[DevQuest 015] Console Conqueror"> <span>[DevQuest 015] Console Conqueror</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="3">{% rauserpic MGNS8M %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/2962" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/058480.png"
                        alt="[DevQuest 016] Wish This Set"> <span>[DevQuest 016] Wish This Set</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic SlashTangent %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/10159" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/067047.png"
                        alt="Castlevania: Legacy of Darkness (Nintendo 64)"> <span>Castlevania: Legacy of Darkness
                        (Nintendo 64)</span></a></td>
        </tr>
        <tr>
            <td>{% rauserpic DarkyAndreas %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/9454" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/062309.png"
                        alt="Shadow the Hedgehog (PlayStation 2)"> <span>Shadow the Hedgehog (PlayStation 2)</span></a>
            </td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/15942" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/062544.png"
                        alt="[DevQuest 017] RA World Cup"> <span>[DevQuest 017] RA World Cup</span></a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="2">{% rauserpic suspect15 %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/21446" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/063287.png"
                        alt="Tecmo Bowl (NES)"> <span>Tecmo Bowl (NES)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/13760" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/065326.png"
                        alt="Baseball Stars Professional (Arcade)"> <span>Baseball Stars Professional
                        (Arcade)</span></a></td>
        </tr>
        <tr>
            <td rowspan="2">{% rauserpic wolfman2000 %}</td>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/20358" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/061269.png"
                        alt="Konami's Golf (MSX)"> <span>Konami's Golf (MSX)</span></a></td>
        </tr>
        <tr>
            <td colspan="3"><a class="gameicon-link" href="https://retroachievements.org/game/16350" target="_blank"
                    rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/066409.png"
                        alt="RealSports Volleyball (Atari 2600)"> <span>RealSports Volleyball (Atari 2600)</span></a>
            </td>
        </tr>
    </tbody>
</table>


### Vet Developer Progress

<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153266"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev I"> <span>Vet Dev
                        I</span></a>Has published at least 1000 achievements AND worked on at least 25 sets as sole or
                majority developer</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic timenoe %}</td>
            <td>{% rauserpic Bryan1150 %}</td>
            <td>{% rauserpic StingX2 %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153267"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev II"> <span>Vet Dev
                        II</span></a>Has created achievements for at least ten different consoles</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic Excessiveiser %}</td>
            <td colspan="2">{% rauserpic kmpers %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153268"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev III"> <span>Vet Dev
                        III</span></a>Has been an active developer for at least two years</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic pinguupinguu %}</td>
            <td>{% rauserpic Ryudo %}</td>
            <td>{% rauserpic SlashTangent %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153272"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev V"> <span>Vet Dev
                        V</span></a>Yielded unlocks have exceeded 50,000</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic timenoe %}</td>
            <td colspan="2">{% rauserpic wolfman2000 %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153273"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev VI"> <span>Vet Dev
                        VI</span></a>As a sole developer, submitted one or more sets for code review and received a
                cumulative grade of at least 22</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic Brandovsky %}</td>
            <td>{% rauserpic ThatAmericanSlacker %}</td>
            <td>{% rauserpic voiceofautumn %}</td>
        </tr>
        <tr>
            <td>{% rauserpic woflman2000 %}</td>
            <td colspan="2">{% rauserpic BahamutVoid %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153269"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev VII"> <span>Vet Dev
                        VII</span></a>Has used at least 75 percent of all currently available flags and features [Vet
                Dev I and VI required]</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="3">{% rauserpic voiceofautumn %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153274"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev VIII"> <span>Vet Dev
                        VIII</span></a>Has obtained at least two badges through DevQuest</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{% rauserpic ThatAmericanSlacker %}</td>
            <td>{% rauserpic Excessiveiser %}</td>
            <td>{% rauserpic Sines %}</td>
        </tr>
        <tr>
            <td colspan="3">{% rauserpic suspect15 %}</td>
        </tr>
    </tbody>
</table>
<br>
<table>
    <thead>
        <tr>
            <th colspan="3"><a class="gameicon-link" href="https://retroachievements.org/achievement/153271"
                    target="_blank" rel="noopener"> <img class="gameicon"
                        src="https://retroachievements.org/Badge/172011.png" alt="Vet Dev IX"> <span>Vet Dev
                        IX</span></a>Has obtained at least five badges through DevQuest</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="3">{% rauserpic suspect15 %}</td>
        </tr>
    </tbody>
</table>
