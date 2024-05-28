---
issue: 2024-05
order: 202405-33
layout: article
title: RAdvantage
author: RANews
toc: false
---

![](../../img/radvantage.png)

RAdvantage is bringing you tips for some of the hardest achievements on the site. As always, our DMs remain open at {% rauser RANews %}, if you have tips for any 100 point or other very difficult achievements you have earned please let us and the rest of the community know.

# Tip Provided By:

<div class="bingo-winner">
  {% rauserpic MeloDeathAtmoBlack %}
</div><br>

| Game                                                                                  | Console     | Genre          |
| ------------------------------------------------------------------------------------- | ----------- | -------------- |
| {% ragamepic 7212, 063592, Pokemon HeartGold Version \| Pokemon SoulSilver Version %} | Nintendo DS | Turn-based RPG |

<br>

| Achievement                                                                 | Description                                                                                 | Points |
| --------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------ |
| {% raachpic 125692, 139182, No Wonder I Never Heard about You %}            | Obtain the Silver Print of the Battle Tower.                                                | 25     |
| {% raachpic 125693, 139183, All My Wishes Came True %}                      | Obtain the Gold Print of the Battle Tower.                                                  | 50     |
| {% raachpic 125702, 139193, Johto's Battle Royale %}                        | Get a Streak of 100 Wins or more in the Battle Tower and obtain a Star on the Trainer Card. | 50     |
| {% raachpic 125700, 139187, Surprises from the Game Board %}                | Obtain the Silver Print of the Battle Arcade.                                               | 25     |
| {% raachpic 125701, 139186, Seems like You Lost Everything %}               | Obtain the Gold Print of the Battle Arcade.                                                 | 50     |
| {% raachpic 125698, 139189, Caitlin's Disappointment %}                     | Obtain the Silver Print of the Battle Castle.                                               | 25     |
| {% raachpic 125699, 139188, A New Position Has Been Vacated %}              | Obtain the Gold Print of the Battle Castle.                                                 | 50     |
| {% raachpic 125696, 139191, Did You Need to Prepare for the Loss? %}        | Obtain the Silver Print of the Battle Hall.                                                 | 25     |
| {% raachpic 125697, 139190, Lord of the Elements %}                         | Obtain the Gold Print of the Battle Hall.                                                   | 50     |
| {% raachpic 125694, 139185, You Should Pay More Attention to the Battles %} | Obtain the Silver Print of the Battle Factory.                                              | 25     |
| {% raachpic 125695, 139184, Your Cheats Have No Use %}                      | Obtain the Gold Print of the Battle Factory.                                                | 50     |

Once you beat the Johto Elite 4 and usurp Lance as champion of the region, HG/SS will introduce a much-beloved playground to the player to continue testing their Pokemon battling prowess - the Battle Frontier. Here, you will be tasked with winning battles under specific rules and conditions in an attempt to reach as high of a streak as you can, including a suite of superbosses that some Pokemon fans don't know exist, and triumphing over them is a huge mark of achievement to you as a player - and for retroachievements.com users, up to 425 cumulative achievement points.

However, there is one problem with this. If you try to use the same team as you played through the story, you will almost certainly be curbstomped long before you meet one of those aforementioned superbosses.

In order to understand how to conquer the Battle Frontier, you'll need to have a deeper understanding of Pokemon's lesser understood mechanics, as well as a basic primer in competitive metagaming first. Then you'll understand what you need to do to create a team capable of winning 100 battles in a row against some of the most difficult trainer battles in a mainline Pokemon game.

Note: This guide will focus specifically on Pokemon HG/SS, and include mechanics unique to those games. However, the general steps and ideas will apply almost identically to Platinum, and mostly similar to Emerald.

## Part 1 - The Mechanics of Competitive Pokemon

Here's a question - have you ever had two of the same species of Pokemon at the same level, and compared their stats? Ever wondered why they could be so dramatically different? That's because there are three mechanics that affect the stats of each individual Pokemon - natures, EVs, and IVs.

To use the current (as of time of writing) simulation data, a level 50 Pikachu can have a special attack value as low as 49 (with a detrimental nature and 0 EVs and IVs) and as high as 112 (with a beneficial nature and maximum EVs and IVs). Put very simply, this means that the first Pikachu could use thunderbolt twice and still not do as much damage as the second Pikachu using it once.

But what do each of those mean? And how can we manipulate them to build a team with stronger Pokemon? Going one-by-one:

Natures are the easiest one to understand, mainly because out of all of these mechanics, they are the only one actually visible to the player. In each Pokemon's summary, they will have a "nature" that succinctly describes their personality, like "quiet" or "impish". While this seems like a slight bit of flavor to color your experience, they have a much more important role in gameplay mechanics. There are 25 possible natures, and each one will increase one stat by 10% (except HP) while also decreasing another by 10% (except HP). This means that there is exactly one nature for each combination of the remaining stats - this also means that five of these natures are purely neutral, given that their increase and decrease cancel each other out.

The stat reduction might make you think that a neutral nature is the best, given that there is no inherent weakness - but this is usually the worst decision for a competitive Pokemon. In practice, the vast majority of Pokemon will always have one useless stat, that being attack or special attack, depending on its species. A Pokemon with only physical moves has literally zero use for its special attack stat, so reducing it is not a penalty whatsoever.
For the Battle Frontier, we will want to focus on maximizing the offensive potential of our team, which means we will need each Pokemon to have a nature that either boosts its main attacking stat or speed. Which one will work better will depend on the species. These four in particular will be your goal:

* **Adamant** - increases attack and decreases special attack.
* **Jolly** - increases speed and decreases special attack.
* **Modest** - increases special attack and special attack.
* **Timid** - increases speed and decreases attack.

If for some reason you get fed up trying to get these specific natures, then I'd say it's fine as long as you can get one with the desired positive effect. However, this opens you up to a bad matchup or bad RNG once you get to battling. It's up to you, more time spent now for more assurance later.

EVs, or effort values, are the most complicated to explain, so I'm breaking these into sub bullets:

* **What are they**: Every individual Pokemon has six EVs, one for each stat. The higher this value is, the larger that stat will grow.
* **What are the limits**: each EV starts at 0 when the Pokemon is first encountered, and can grow up to a maximum of 255. However, the cumulative sum of all six values cannot be larger than 510. This means that only two of them can be maxed out.
* **What's the actual math or how exactly does this affect the stat**: Divide the EV by 4, rounding down, and that result is exactly how much will be added to the Pokemon's final stat at level 100 (scaled linearly as it levels). A level 100 Pikachu with 100 speed EVs will therefore have a speed stat 25 points higher than the same Pikachu with 0 EVs.
* **How do you increase them**: Whenever your Pokemon gains experience by defeating another Pokemon, one of the EVs will increase. The exact gain depends on the Pokemon giving the experience, but the general rule of thumb is that each Pokemon will give EVs correlating to its highest stat. Unevolved pokemon will typically give 1, evolved Pokemon will give 2 or 3, and pokemon that can't evolve will give 2. I'll go over optimal grinding spots in the next section.

<br>

**Note**: because of the rounding down, this actually means that EVs "soft cap" at 252, with an increase of 63. This is where competitive players have coined the 252-252-4 EV split, to min-max the EV gains across the board. I'm going to ignore this. For our purposes, we will want to max out two values instead, typically speed and either attack stat.

IVs, or individual values, are analogous to genetics but applied to a Pokemon's stats. Every Pokemon has six of these values generated when they are first encountered, whether that's in the wild or hatched from an egg. Each one is an integer number between 0 and 31 inclusives, and this literally translates to a flat increase to its corresponding stat for a level 100 Pokemon (scaled appropriately as the Pokemon levels up). Unlike EVs, these are completely uncorrelated from each other, meaning all of them could be maxed out at 31, which is almost always what you'd want in a competitive Pokemon. (I say almost, since there are some niche strategies and setups that would require other deliberately lower IVs.)

Now, here's the problem. Like natures, you cannot change IVs in any way. (At least not in HGSS.) And while there are mechanics to manipulate the IVs of Pokemon gained through breeding, I'm not going to cover them. They are too complex and RNG-dependent for our current goal. If this was a guide on creating fully competitively viable Pokemon, I would need to, but for the Battle Frontier alone, having a beneficial nature and ideal EV spread is sufficient.


## Part 2 - Selecting a Team

So now that you know the mechanics, what are the best Pokemon? The most obvious answer would be those with high base stats for offense, wide movepools, and synergy with each other. I'll go further and highlight the pseudolegendary Pokemon specifically. Fortunately, HGSS has more than three such Pokemon available to catch. Unfortunately, two of them are caught in the Safari Zone. If you don't know why that's unfortunate, then it's because you've never actually used the HGSS Safari Zone. Going into its mechanics would be its own section entirely, and I'm not providing that for the sake of focusing on this guide.

The best team I can recommend is also the most predictable. Considering each battle has three Pokemon only, a brute force approach to viciously eliminate the opposition is really all that's needed. I'm not going to give the exact moveset and stat spread I used, since this is mainly to give an idea for your own team. Feel free to adjust, or take the knowledge of the mechanics to build a different team entirely.

1. Tyranitar
Tyranitar has consistently been one of the strongest competitive Pokemon since it was introduced in GS, for its combination of bulk, offense, varied moveset, and its ability that creates a permanent sandstorm. Its speed isn't the greatest, but with a beneficial nature and EV investment, alongside a choice scarf item, it can still go first before most Pokemon encountered in the Battle Frontier. Crunch and Rock Slide are absolute must-have STAB moves. Although, I used Stone Edge in my successful runs. The lack of accuracy wasn't an issue since I was keeping backup saves - if RNG was against me, I'd reset and go again. But I don't think I'd recommend it. I don't recall too many instances where the extra power gave me an OHKO that I wouldn't have been able to follow through. Max out attack and speed EVs and it'll hold its own no matter what. I would personally recommend the Jolly Nature, for the speed bonus, but I wouldn't call it better than adamant.

2. Garchomp
As you might expect from a land shark crossed with a fighter jet, Garchomp is an absolute beast. It hits fast, and it hits even harder. Give it the moves Dragon Claw and Earthquake, and it will hit almost every Pokemon for at least neutral damage. Give it a choice band held item, and that neutral damage will be enough to get one KO most of the time. Crunch is also a great secondary coverage move, to ensure OHKOs against most psychic and ghost types. It also synergizes with Tyranitar's permanent sandstorm due to its ability Sand Veil giving it an evasion boost, but you shouldn't rely on that (nor will you need to).

3. Metagross
Despite my praises for Tyranitar and Garchomp, I would genuinely say Metagross was the MVP for my team, because it is so much bulkier than those two. I didn't mention the drawbacks for the choice items - that being how they lock you into only one move - simply because guaranteeing one kill with either of them is a net positive. But Metagross being so bulky, if I needed to switch, he'd almost assuredly survive, even moreso considering the type synergy. If the enemy sent out an ice type against Garchomp, I'd switch to Metagross and take virtually no damage in return, then retaliate with Meteor Mash. Zen Headbutt being the psychic STAB alternative. Also, once you gain enough BP currency from the lower levels, I'd highly recommend teaching Metagross thunderpunch from the move tutors. Without it, these three Pokemon don't have much answers to water types, and this saved my butt in at least ten battles throughout my run. For its nature, unquestionably adamant is the best choice. Metagross isn't fast, but it's so naturally bulky that it doesn't need to be. On that note, I wouldn't give it speed EVs for that reason. Start by maxing out attck, but then I'd put the rest into HP. I genuinely don't know what an optimal defensive spread would be, so this was my simple "It'll do me good no matter what" approach. For its item, go with either Leftovers or Life Orb, for more longevity or power, depending on preference.

Those three made up my team. The only obvious flaw is that they're all physical, which you'd think wouldn't work against Pokemon with high defense. That might have been true against a competitive human player, but for the Battle Frontier, they all hit hard enough that it rarely mattered. Other great Pokemon would be Raikou and Latios. Both of these have amazing speed and special attack, and fit the offensive approach amazingly well. The reason I don't recommend them is because they are both roaming legendaries. This makes resetting them for an optimal nature much more trouble than it's worth.


So once you know the three Pokemon you plan to use, start by catching them. If you're lucky, they'll already have the right nature, but if not, take them to the day care and breed them with a Ditto until you hatch an egg that does. Then use the following Pokemon exclusively to level up. Get a notepad ready, because remember that EVs are invisible - you'll need to manually keep track of what and how much you earn. 

**Attack** - go to either Mt Mortar or Cerulean City, and surf along the water. In both places, the only two Pokemon you'll encounter are Goldeen and Seaking, which will give you 1 and 2 attack EVs per kill respectively.

**HP** - go to the Slowpoke Well and surf. You will only encounter slowpoke, which give 1 HP EV each.

**Speed** - go to Blackthorn City and surf. You will only encounter Magikarp, which give 1 speed EV each.
(I'm omitting the other stats given that I did not recommend Pokemon with other EVs)

Since Pokemon hatched from eggs start at level 1, you'll want to start off by giving them an Exp Share and letting another Pokemon entirely do the dirty deed of killing them. Remember that EVs go up when a Pokemon gains experience, not necessarily when they make a killing blow, so to speak, so the exp share will work just as well. By the time you max out HP or Attack for a Pokemon, it should be more than capable or soloing the Magikarp for its speed EVs. And this is important, since you'll want to give it a different item now: the Macho Brace. The game does a very poor job of explaining what this does, so here's my version: this item will half your Pokemon's speed in-battle (it's actual stat in all other aspects is unchanged). However, it will cause your Pokemon to earn twice as many EVs. So each Magikarp will give 2 speed EVs instead of 1, drastically speeding up the process. 


## Part 3 - The Battle Frontier

Funny how a Battle Frontier guide has more time and effort placed into the preparation than the actual battling. That aside, it will pay off, and your team will be nearly unmatched. Each facility has its own special rules to cover though, so we'll go through them first.

**Battle Tower** - these are just normal 3v3 battles. No special rules. I know, I just technically lied to you. Although you'll earn the gold print after 49 battles, full mastery will require you to earn a streak of 100. Just understand that there is no holding back from battle 50-onward, some trainers will even bring minor legendaries like Moltres or Latias.

**Battle Arcade** - in my opinion, this is just like the Tower, but easier. First off, you can't use items for this facility, but you're Pokemon should be powerful enough without them. The Arcade's big gimmick is that before every fight, you will play a timing minigame, and the result will affect the battle in some way. That said, the default speed is always the same, and you can very quickly figure out how to get it to stop exactly where you want every time. There is no luck involved, just skill. Meaning you're basically choosing what debilitating effect to give to your opponents instead. Later on in the streak, this could include the sleep status, which is a near-guaranteed win.

**Battle Castle** - this one is complicated. It's basically the same 3v3 battles as the Tower and Arcade, but with some pseudo roguelike elements. First off, you can't bring items. Second, your Pokemon are not automatically healed between rounds. This includes their move's PP. After every fight, you will be given some currency, with more being awarded if all of your Pokemon survive. You can spend this currency between fights to heal your pokemon, give them items, or view the upcoming enemy team (which is pointless, do not do this). In addition, you can't start off by buying the really good items, you first need to spend enough points to unlock that privilege. Lastly, your point total will carry over between sets of 7, but not held items (those will need to be rebought each time). There may be more I'm forgetting, but these are the important notes. Since you need to make it through 49 battles in a row, you'll want to go through the first 14 ideally without spending any points at all. This way, you'll be able to comfortably heal near the end, where even with a powerful team like mine, you'll still probably take a hit or lose one in each battle.

**Battle Hall** - this one is the most interesting facility in theory. First off, this is the only facility where there aren't 3v3 battles. Instead, you will pick one Pokemon only, and you'll need to go through 170 1v1 duels using that pokemon to finish a streak. Before each duel, you will choose which type of Pokemon to fight. Each type starts off at tier 1, basically an incredibly weak unevolved Pokemon, and they go all the way to tier 10, being one of the strongest members of that type. You will do these battles in sets of 10, so optimally you'll knock out one full tier of type each set. But worth pointing out is the level scaling. Because this is a 1v1, the odds are stacked in your favor, and the opposing Pokemon will be of a much lower level, even at tier 10. At least, this is how it is near the beginning. By the time you near the very end, at 100+ duels won, this advantage will eventually disappear, meaning it's important that you eliminate the bad type matchups from the board as early as possible. If you're using my team, Garchomp with a choice band is the best candidate. It's already naturally faster than most Pokemon, especially given the lower level, and you'll want to OHKO as many of them as possible. Keep in mind that Garchomp has two weaknesses - ice and dragon. Dragon is generally not an issue, since you also have your own dragon type move in Dragon Claw, and are already faster, so this self-weakness is actually in your benefit. Every possible dragon type Pokemon is weak to dragon type moves (because the only dragon type in HGSS with a second type that resists it is Dialga, which is banned from the Battle Frontier, both for you and the other trainers). The big problem is ice, most obviously because you'll be 4x weak to it, but more insidiously it's because of the specific move Ice Shard. Ice Shard is like Quick Attack, in that it has priority and will always go first, but at low levels it's somewhat common for Garchomp to survive. You'll want to eliminate ice very early because of this. Immediately afterwards, consider types with ice dual typing, namely dark (because of Sneasel/Weavile) and water (too many to list). If you can eliminate all of these, then the back half is slightly easier than the first overall.

(Worth noting that the superboss doesn't have a specific Pokemon that she uses. She just picks one at complete random, so good luck.)

**Battle Factory** - and to finish this off, we have the facility where none of your prep work matters. Here you'll be using rental Pokemon. Pay close attention to each Pokemon's stats during your initial choice. Sometimes a Pokemon will have a great movepool but its stat spread will be so average that it won't have the raw punching power you're used to for the other four facilities. Also, if a Pokemon has all three of the elemental punches or fangs, try to avoid picking them. These are, in my opinion, noob bait. Those moves don't have as much raw power as you'd expect, and the pokemon with them often don't have the STAB bonus to power them up. They're versatile, but even then they're not quite as synergistic as you would think. A lot of common types aren't hit super effectively by any of them, like rock and fire. After enough iterations, you'll start to get a handle for what is and isn't actually good. But all I can say is, good luck.

Personally, I recommend starting with the Battle Arcade and the Battle Castle, on the basis that they use your team but don't allow items. Some of the items and moves I've recommended can only obtained through the battle points earned during your time at the Battle Frontier. Instead of grinding out the early rounds, you could optimize your time and earn most to all points needed from these two facilities first. The Choice Band in particular is a must-have item for the Battle Hall, but is only available at the points store.

Lastly, a word on save scumming. When playing the game on actual hardware, there are a few measures in place that prevent you from reloading a save and keeping your streak if a battle goes south. Before you start a series of battles, the game saves, and once you're finished, it saves again. If you shut off the power between these two save points - as in, if the game needs to load from the first save point - the game will treat this as if you lost, and your streak will be completely reset. During emulation, this can be circumvented by opening your file browser and creating copies of your save data as you go, so if you need to reset from a midpoint, you can use one of your save file backups and keep your progress. This begs the question, is this cheating? I personally see this as a natural extension of the software capabilities of your emulator and operating system, and thereby absolve myself of any negative consequences of this behavior. That is all.
