---
issue: 2023-09
order: 202309-03
layout: article
title: RetroAchievements Development Experience
author: suXin
toc: true
toc_float: false
---

During the stressful mid-late summer of 2021 I've noticed [retroachievements.com](https://retroachievements.org/) show up on my Twitter feed. I actually found out about it several years prior, but didn't bother because I had an impression it's not polished enough, and the platforms supported were too retro for me. This is definitely not the case anymore: much more game consoles are supported, and new achievement sets are reviewed by people with the experience to ensure quality (only if developer is new). Initially I looked into [available PlayStation games](https://retroachievements.org/gameList.php?c=12) and got an excuse to replay [the original Gran Turismo](https://retroachievements.org/game/11320), and while playing I thought: _there are no Colony Wars achievements, if no one else did them so far then who will? Me, I guess. I could give it a try._

I wonder how many people actually developed their first achievement set with same exact motivation. In this blogpost I want to introduce you to the whole thing, share my struggles and give an opinion on achievement development workflow through perspective of a regular programmer.

## What are these achievements about?

**RetroAchievements** provide a service to allow players of emulated games to earn achievements, similar to achievement systems on Xbox, PlayStation or Steam. Achievements are various tasks to complete in-game: finishing certain level, defeating a boss in unorthodox way, collecting all secrets - you name it.

Achievement system is supposed to track the game state` and mark the achievements as earned when appropriate. If you're programming the game yourself - you can easily query what's happening in the game and program the achievement accordingly. You can also make the event system that emits events for the achievement system.

In case of RetroAchievements, the limitations become extreme: even if you were to make a ROM hack with achievement system inside, you still wouldn't be able to make game itself to report achievement unlocks to 3rd party for tracking purposes. All you have is CPU state of the emulated system and runtime memory. Figuring out what's happening in the game based on CPU state would be both very tough and also limited (address of the code you're currently executing?), leaving the only way of integrating the achievement system into old emulated games: tracking down current memory state and it's changes.

Essentially, developing for RetroAchievements is part reverse engineering, part game design, part understanding and going around limitations of development tools. Given [the emulator with achievement editor and memory inspector](https://github.com/RetroAchievements/RALibretro), you're supposed to track down in-game values in the memory (like you would do with [Cheat Engine](https://www.cheatengine.org/)), and specify conditions for the achievement unlock **in declarative way** based on those memory values.

## Colony Wars: Vengeance - my first RetroAchievement set

### Trying out development tools

So I figured I want to make achievements for Colony Wars: Vengeance, being familiar with the game certainly will help. First of all I wanted to check out the tools, so I downloaded the [RALibretro](https://github.com/RetroAchievements/RALibretro) and began reading [all available documentation](https://docs.retroachievements.org/Developer-docs/). During those days documentation had issues: some of the niche features of Achievement editor are not documented or lack examples, some articles were edited out with vague explanation, and later outright give 404, like [_Simple Example of How to Avoid Load State Abusing_](https://docs.retroachievements.org/Simple-Example-of-How-to-Avoid-Load-State-Abusing/) - I had this bookmarked around April 2022. The documentation overhaul is being worked on, but at very slow pace.

While toying with the achievement editor, I was met with several inconveniences:

- **No string comparison**: you can't compare strings in achievement conditions. Initially I was annoyed but lack of this encourages better practices: you'd rather find consistent numeric IDs instead. The strings can be different if game has multi-language support after all, which would bloat the achievement logic. Comparing strings as if they were C-strings sure doesn't seem like a reliable solution (unless you provide reasonable string size limitations?). There's also more chance to make mistakes if you do string conversions manually. After support for PlayStation 2 came by, the developers encounter strings more frequently. The need for better tooling arose, so I wrote a [proposal for RATools](https://github.com/Jamiras/RATools/issues/345) on matter. [RATools](https://github.com/Jamiras/RATools) is a scripting language that can be interpreted into raw achievement code.

<p align="middle"><img src="https://github.com/RetroAchievements/RANews/assets/76693803/7f3f9fa8-3ca7-4ab8-9942-68c07ecfcec4"></p>
<p align="middle"><i>Did you figure that this condition checks for characters 007?</i></p>

- **No signed number support**: I encountered several signed numbers later in development, and doing all the math on your own can be real annoying. I get it's easier to interpret values as always unsigned internally, but editor could benefit from input/output as signed numbers. Atleast RATools can do these conversions.
- **Code notes are unintuitive for first timer**: _you see_, there is a difference between regular address bookmark and code note, the latter are shared online. If you didn't read the docs very well and rushed into the inspector, can you make the difference between _Add Bookmark_ and _Save Note_? What about that _Delete_ button? What about those hideous `...` near address input - that opens a window with all the downloaded notes and allows you to make local bookmark copies of them. I swear first time I wanted to look into how some other game achievements operate, it took me awhile to figure that I have to click that exact button. To add insult to injury: this screenshot is the older version of the Inspector, and in the latest one you _Delete_ the note by making the note empty, and then submitting it as empty. Do you find that intuitive?

<p align="middle"><img src="https://github.com/RetroAchievements/RANews/assets/76693803/e4689bf5-3329-4bff-8b16-f6ed5642bade"></p>
<p align="middle"><i>Memory inspector shows memory contents and value search results</i></p>

- **Support for pointers could be better**: initially the only way to properly follow, observe and debug values behind pointers would be making an achievement and right clicking the addresses on the conditions that lead to the value. This is extremely unintuitive and probably not explained anywhere besides some occasional Discord messages. Recently there was an update that highlights pointed values in Memory Inspector if Code Notes are formatted properly, which doesn't not work with pointer to pointer and beyond. I'd still would like to observe values behind pointers in bookmark list instead of making dummy achievements, and without recreating the bookmarks every time the address in the pointer changes. I tried to do the latter in Cheat Engine instead once, but it doesn't work very well if in-game memory is located at very high 64-bit addresses, those just don't play well with all the pointer math applied (small 0x0ABCDE address needs to get converted into a very high one, fails to do so).

### So you want to be Achievement Developer?

After trying out tools and figuring that I can do this, it's time to tell the community about yourself and the game you will work on.

At the moment of writing this, to develop achievements you have to make an account on website and state your intentions in Discord server: you want to become **Junior Developer** and mention the game you're going to develop for. Your Discord account gets validated and gives you access to most of the channels, including #jr-devs if you were given the Jr-Dev role. There you can ask for help, share progress and talk to other Juniors and **Code Reviewers** - experienced Developers who specifically dedicate their time helping Juniors, reviewing and publishing their achievement sets. In Discord you will be given a memo/roadmap on how to proceed: what docs to read, how to publicly claim the game you will develop for, what to do after you're done.

I heard that originally everyone could publish sets and achievements on their own. Naturally, this led to quality issues and so this Junior Developer Program came to be. With introduction of 6th generation consoles that have much bigger memory size and usage of pointers, trusting random people with making sets for complex games becomes an issue. Unfortunately, the program still doesn't guarantee quality sets after graduates get their Developer status, because the lack of code reviews afterwards may still let some of the bad practices slip in. I remember a case of Developer on a streak of so many bad sets that it led to losing the Developer status, only for them to try again with alt-account, which ended up with exact same story. There was also a case with the work outright being intentionally bad _to make a certain point_, like a public stunt. I wouldn't call such situations bad, rather natural for a _community_ to have after it's grown big enough.

### Some actual work

Initially I was reluctant to properly claim the game because I was still grasping the dev tools and I was also about to move places, so the development would halt for unknown amount of time. I was told to not rush it and still claim the game proper, which I did. I also had to provide a screenshot for game title screen, an in-game screenshot and 96x96 icon that would represent the whole set. [These are still up on the game page.](https://retroachievements.org/game/11562)

<p align="middle"><img src="https://github.com/RetroAchievements/RANews/assets/76693803/b5a85302-1de8-4150-b4ea-7eee4bbc32a9"></p>
<p align="middle"><i>set icon</i></p>

I made several simple achievements: completing a couple of introductory levels with certain requirements, and some stupid stuff like _Complete any mission by only moving backwards_. I really needed early feedback for the code I had because _I knew that if I did something real wrong - it would span into the whole set and I'd have to manually fix the whole set afterwards._ The feedback was given by one of the Code Reviewers which I'm grateful for. I believe most people rather dump the whole thing into the final review, but that's an okay thing to do if the game and set isn't big.

During this time I didn't know of RATools, yet wished for something like that, exactly so I could reliably fix issues with reusable code instead of manually editing conditions for each achievement and risking to miss some. Did you know that some people use Google Sheets / Excel to generate conditions? This is how they may look: `N:0x 05514c>d0x 05514c`, which stands for `AndNext Mem 16-bit 0x5514c > Delta 16-bit 0x5514c`, which would track any increment of 16-bit value at address 0x5514c

Sometimes the game you develop for is not cooperative. I needed to figure out the universal way to track mission start and mission end moments, but couldn't find something precise like a boolean value or some number. This may cause you to rely on weird and situational values, like I've chosen to rely on value that affects camera shake effect in the loading screen sequence, and when it reaches exact value - I'm sure it signals a mission start. This is only one example of a dirty hack people may come up with to finish the job. [You can read about more hacks of mine in this forum post.](https://retroachievements.org/viewtopic.php?t=13632&c=98283#98283)

### Example achievement translated to regular code

Let's look at [Berserker](https://retroachievements.org/achievement/180890): Complete any mission while not letting go of primary weapon fire and with no overheat, activated with "Dark\*Angel" password.

<table>
  <tr>
    <td>Core</td>
    <td>Alt1</td>
    <td>Alt2</td>
  </tr>
  <tr>
    <td><img src="https://github.com/RetroAchievements/RANews/assets/76693803/22bcf75d-b4e7-4581-8000-cffac4d3546f" width=621></td>
    <td><img src="https://github.com/RetroAchievements/RANews/assets/76693803/7cbb0004-1d51-451b-aa73-f0cf082ef9a3" width=621></td>
    <td><img src="https://github.com/RetroAchievements/RANews/assets/76693803/e2153392-d8e2-4097-93db-b17eacf52484" width=621></td>
  </tr>
</table>

The C-like pseudocode that reflects the logic is provided below. Each achievement requires you to specify the logic in _Core group_, and in addition to that you can specify _Alt groups_. For the achievement to trigger, conditions in Core and one of the Alt groups have to be true. All of my achievements shared very similar logic in Core group: general cheat checks and marking mission start/end, and in the Alt group I define additional in-game logic if required. This achievement has two Alt groups because the achievement set supports both NTSC and PAL versions of the game, and sometimes the required values are located at different addresses.

It was already mentioned that editor requires you to specify unlock conditions in declarative manner, but there's actually a way to introduce intermediate state in form of **hits**. Hits on regular conditions must have reached the specified limit for achievement to trigger, like in the straightforward case of marking mission start and completion. Hits you can see on ResetIf condition act different, once reached, all other Hits will be reset: when you don't fire your weapons, or actually stop firing them only for 180 hits, or 180 frames.

```
char   *serialCode = 0x9e1e

uint8  *cheat1 = 0x34444
uint8  *cheat2 = 0x34446
uint8  *cheat3 = 0x34449
uint8  *cheat4 = 0x3444b
uint8  *noOverheatCheat = 0x34447

uint8  *auxValue = 0x34c8c
uint16 *gameState = 0x34684

uint32 *cameraShakeEffect = 0x34a68

uint16 *techTokens = 0x5514c
uint8  *missionFlag = 0x59d76

uint8  *selectedAct = 0x59d72
uint8  *selectedMission = 0x59d74
uint8  *grapplesAttachedToPlayer = 0x46016

bool missionStarted = false
bool missionCompleted = false
int  framesPassedWithoutFiring = 0

void reset() {
    missionStarted = false
    missionCompleted = false
    framesPassedWithoutFiring = 0
}

bool core() {
    if ( *cheat1 || *cheat2 || *cheat3 || *cheat4 || *auxValue == 0x02 /* DEMO_PLAYBACK */ ) {
        return false
    }

    if ( *gameState == 0x140 /* MAIN_MENU */ ) {
        reset()
    }

    if ( *noOverheatCheat && *cameraShakeEffect == 0x84 ) {
        missionStarted = true
    }

    if (
        *techTokens  >  previousFrameValue(techTokens) &&
        *gameState   == 0x100 /* IN_GAME */
        *missionFlag == 0x2   /* COMPLETE */
    ) {
        missionComplete = true
    }

    return missionStarted && missionComplete
}

bool alt1() {
    if (
        serialCode != "007" /* Part of SLUS-00722 serial, NTSC version */ ||
        *gameState == 0xa0 /* LOADING */ ||
        ( *selectedAct == 0xe && *selectedMission == 0x1 && *grapplesAttachedToPlayer > 0 )
    ) {
        return false
    }

    if (
        *gameState != previousFrameValue(gameState) &&
        *gameState == 0x100 /* IN_GAME */
    ) {
        framesPassedWithoutFiring = 0
    }

    if ( framesPassedWithoutFiring >= 180 ) {
        reset()
    }

    uint8  *selectedPrimaryWeaponIndex = 0x11cad0
    uint32 weaponOffset = *selectedPrimaryWeaponIndex * 0x58
    uint32 *selectedWeaponIcon = 0x12e224 + weaponOffset
    uint32 *selectedWeaponCooldown = 0x12e220 + weaponOffset

    if (
        ( *selectedWeaponIcon != 0x6 || *selectedWeaponIcon != 0x7 ) &&
        *selectedWeaponCooldown == 0
    ) {
        framesPassedWithoutFiring++
    }

    if (
        *selectedWeaponCooldown < previousFrameValue(selectedWeaponCooldown) &&
        *selectedWeaponCooldown == 0x0
    ) {
        reset()
    }

    return true
}

bool alt2() {
    /* similar code to alt1 but for PAL version */
}

void onFrame() {
    if ( core() && ( alt1() || alt2() ) ) {
        unlockTheAchievement()
    }
}
```

If you have programming experience and decide to contribute to RetroAchievements, I recommend you also look into [RATools](https://github.com/Jamiras/RATools), a custom scripting language which translates into achievements that you'd create manually in the editor. I discovered these late in development and the tools crashed for me when I tried to use them to make just one achievement. And yet, I also suggest to not actually use RATools until you're well versed in the regular editor first and with how all these conditions work, because you'd like to understand what the scripts translate into. Same as understanding how basic code ends up looking in disassembly.

### Badges

All achievements you publish require _badges_, which are 64x64 icons. This is something I didn't like dealing with because the source material doesn't scale well. When dealing with 2D retro games, you can [steal the sprites](https://www.spriters-resource.com/), which are small and contrast enough to fit into a badge to make it look good. With 3D games that's not the case: you can't easily make a scene with 3D objects unless you have control of the camera or the original 3D models; the 3D objects are relatively big and you have to compromise between showing a background or close-placed, but cropped 3D model.

<p align="middle"><img src="https://github.com/RetroAchievements/RANews/assets/76693803/ba93208d-2829-405d-a662-27724b27e5a4"></p>
<p align="middle"><i>Collage of badges, it can be hard to make out the detail in them</i></p>

Below you can see an original screenshot I made as a base for the badge, and the resulting badge. Even in the original big sized screenshot it's hard to notice the player's craft near the cannon. It's possible to selectively brighten up the craft, but when you have many achievements to deal with, you tend to be lazy about it. If you were to brighten up the entire image instead - it will make the background look burned out and ugly.

<table>
  <tr>
    <td>Original</td>
    <td>Badge</td>
  </tr>
  <tr>
    <td><img src="https://github.com/RetroAchievements/RANews/assets/76693803/66c78fdb-ae8a-4d2f-ad1e-74b54efaac8d"></td>
    <td><img src="https://github.com/RetroAchievements/RANews/assets/76693803/1b5800b7-6c79-42c5-9558-f2a44a22805d"></td>
  </tr>
</table>

I mentioned that it's harder to make badges for 3D games unless you have control of the camera. In Colony Wars: Vengeance, you cannot freely position the camera. To deal with this problem I had to modify the in-game memory to get _some control_. While I did find the exact values defining current camera position and rotation, they are useless without binding the buttons to actually move and rotate the camera, and I was lazy to implement all that. What I managed to find instead is camera mode that tracks the player. I can position myself into a spot serving as camera origin, activate player-tracking camera mode, then position my spacecraft where I want. This ain't always easy to do either because the ship has some inertia that you may need to get rid of (once again, hack the in-game memory to freeze the ship position); sometimes the angles are slightly wrong and you'd have to tweak the camera position manually _alittle_.

### Leaderboards

In addition to achievements, you can create leaderboards. Coding of these is similar to coding achievements, but it's stateful: the leaderboard can become active and then cancelled or submitted. Code for actual leaderboard result retrieval (Value) has to abide by special rules. It may not be obvious at first, but for simplicity, you can make instant-submit leaderboards by using always false (0=1) and always true (1=1) conditions for Cancel and Submit respectively.

Coding leaderboards used to be hell because the toolkit didn't support making leaderboards. What you could do is to create dummy achievements representing Start, Cancel and Submit portions of the leaderboard, debug them, then copy the resulting code to the website. I could live with inconvenient debugging, but copying the code - that's hell. There also used to be a website bug that didn't show leaderboards with no entries, so I had to force-submit fake, easy-to-beat result to avoid this issue.

<p align="middle"><img src="https://github.com/RetroAchievements/RANews/assets/76693803/5fc1ceda-67c3-4407-976f-59871a25a02f"></p>
<p align="middle"><i>Leaderboard editing on website</i></p>

Nowadays the toolkit supports leaderboard development: coding, debugging and uploading of leaderboards.

I did leaderboards for a bunch of missions which are actually fun to finish them fast, and had to separate them by region because the time for PAL version flows faster.

I also explored leaderboards as alternative to achievements, as optional challenges. In Colony Wars: Vengeance, if you successfully complete a mission, you gain upgrade tokens for your ships. Instead of making an achievement related to those tokens, which you can gain infinite amount of with a cheat anyway, I made a leaderboard for reaching any ending with most tokens acquired. This naturally forces player to play the game with unupgraded ships for additional challenge, and also requires to plan the best route through non-linear story to get most tokens.

### Rich Presence

All games can have optional [Rich Presence](https://docs.retroachievements.org/Rich-Presence/) coded, which makes players share their game state on website and, if emulator implements it, in some other software like Discord.

<p align="middle"><img src="https://github.com/RetroAchievements/RANews/assets/76693803/beedc8c0-d4de-4e0c-92a6-27d0c2aab533"></p>
<p align="middle"><i>Rich Presence on bunch of players</i></p>

Implementing Rich Presence, yet again, can be hell unless you use RATools or have some other form of automation. The lookup definitions are straightforward. The actual displayed text is technically a giant if-else expression, the conditions being defined the same way the raw achievement or leaderboard code would be. Meaning without RATools you would have to copy-paste code from dummy achievement into regular text file. Depending on the game and what memory values you have found out, the conditions may end up being repetitive. There's also a possibility of emulator you use to outright undo all of your work because it will attempt to fetch Rich Presence from servers, of which there are none, replacing your work with nothing, so **make backups of your Rich Presence work**.

Below is an example of Rich Presence. Note repetitive `Carrying out mission: @Mission(0x059d72*3_v-3_0x059d74_v-1), while piloting Spook`. This is because for special ground missions, the game didn't change the value that reflects player's ship choice, so I added a few cases for specific missions, of which there a few. The final line is displayed if all the other conditions failed, you can write something generic or funny in there.

```
Format:Counter
FormatType=VALUE

Lookup:Mission
0=Escort duty
1=Resource collation
2=Bring battle-platform online
// and many other missions...
91=Ending 1
92=Ending 2
93=Ending 3
94=Ending 4
95=Ending 5

Lookup:Ship
0=Hex
1=Wraith
2=Diablo
3=Voodoo

Display:
?0x059d72=0?Playing Colony Wars: Vengeance
?N:0x034684=320_N:0xH059d72=96_0xH059d76=2?Have reached Good Ending
?N:0x034684=320_0xH059d72>=91?Have reached @Mission(0x059d72)
?N:0x034684=320_N:0xH059d72=14_0xH059d74=1?Preparing for their sentencing
?0x034684=320?Preparing for the next mission: @Mission(0x059d72*3_v-3_0x059d74_v-1)
?N:0x034684!=320_N:0xH059d72=14_0xH059d74=1?Is being sentenced while piloting @Ship(0x041ff4)
?N:0x034684!=320_N:0xH059d72=3_0xH059d74=3?Carrying out mission: @Mission(0x059d72*3_v-3_0x059d74_v-1), while piloting Spook
?N:0x034684!=320_N:0xH059d72=4_0xH059d74=3?Carrying out mission: @Mission(0x059d72*3_v-3_0x059d74_v-1), while piloting Spook
?N:0x034684!=320_N:0xH059d72=9_0xH059d74=3?Carrying out mission: @Mission(0x059d72*3_v-3_0x059d74_v-1), while piloting Spook
?N:0x034684!=320_N:0xH059d72=16_0xH059d74=2?Carrying out mission: @Mission(0x059d72*3_v-3_0x059d74_v-1), while piloting Spook
?0x034684!=320?Carrying out mission: @Mission(0x059d72*3_v-3_0x059d74_v-1), while piloting @Ship(0x041ff4)
Playing Colony Wars: Vengeance
```

### Review process

After you have implemented all the achievements, badges, Rich Presence and uploaded it to RetroAchievements, you ping the Code Reviewer group in the Discord server. You're eventually put into [backlog](https://docs.google.com/spreadsheets/d/e/2PACX-1vSl4tRG-wV1lxtb-2ZJYRoM0VLnQPYoQO1jOVRmb8TFWldFJGr7RrO6-I-c6rWK0XsZ1h5pJEOStjmQ/pubhtml?gid=1582422742&single=true) and any Code Reviewer can pick you from the list to review your set.

The backlog used to be called a _queue_ and it really frustrated me, because it gave a wrong impression that Code Reviewers would try their best to go top to bottom of the queue. The reality of situation is, you may get reviewed fast because the reviewer likes your game, or very late because you picked something tough/complex, like an RPG. Because it was called a queue - it was very frustrating to see new smaller achievement sets appear and get into review process sooner than yours, giving an impression that some reviewers could prefer doing small but complete bits of work instead of taking a bigger one. Intrusive thoughts screamed that _this is not professional_, which is silly, because RetroAchievements is a community free of charge, not a job.

For me it took almost a month to get reviewed. For some people waiting so much can be frustrating: you cannot claim making another set when you already have one in the review backlog (though nothing prevents you from doing some work quiet and unofficially at your own risk). I was playing [Colin McRae Rally](https://retroachievements.org/game/16557) during this period and noticed it doesn't have Rich Presence, so I thought it wouldn't hurt to make one, it's not that complex compared to making entire set. That still got me a fair warning that Junior Developers should only focus on their own sets. No matter how confident you are about what you're doing, prove your skills properly first.

The review covers general set design, logic proficiency to avoid general mistakes in achievement code, badges, code note quality, Rich Presence, leaderboards. The questions about design of specific achievements may be asked because Code Reviewers are not required to be fully familiar with the game and play it to conclude the review.

Fortunately for me I managed to snatch regular Developer role by releasing only one set. Apart from the work being good enough, it demonstrated variety of ways I could code an achievement and me being familiar with complex cases like pointers and array lookup. Sometimes people pick simple games that don't require complex code, which likely will not result in getting the Developer role in one attempt.

## Aftermath

Initially I only wanted to try achievement development once and move on, but that didn't happen to be the case. I was suggested to participate in Dreamcast rollout, a developer community event in which you claim a Dreamcast game to develop for and release it alongside actual Dreamcast achievement support. Depending on the console, these can be hyped big, and I figured it'd be interesting to explore some racing game on that platform, so I made a set for [Metropolis Street Racer](https://retroachievements.org/game/343).

Then I was playing [Driver](https://retroachievements.org/game/11391) for PlayStation, and wasn't satisfied with the achievement set. Given my new Developer role and existing ways to revise achievement sets - I shared a [revision plan](https://retroachievements.org/viewtopic.php?t=5710&c=101414#101414) and got enough positive votes in Discord to implement it.

The PlayStation 2 rollout was also going to happen, another excuse for me to explore more racing games: [WRC Rally Evolved](https://retroachievements.org/game/19283) and [Gran Turismo 4: Prologue](https://retroachievements.org/game/3050). After the rollout I couldn't help myself but develop for [Gran Turismo 4](https://retroachievements.org/game/20580) - the most played achievement set of mine, which deserves it's own blogpost.

The experience overall didn't seem useful because it's very specific. I do get the satisfaction from expressing love to favorite games by making achievements for them and then players appreciating, but that's it. This changed when I grew unsatisfied with RATools and figured I could try doing my own take on it, which resulted in a JavaScript library and CLI utility that are worth publishing on npm, something I never did in my life. At the moment of writing this, I still didn't publish these, unfortunately, yet you can check the [examples of JavaScript based scripts here](https://github.com/suXinjke/RAScripts/tree/ratoolsjs/js).

Developing for PlayStation 2 also required some reverse engineering efforts to track down pointer addresses and offsets. This valuable experience also deserves a blogpost.