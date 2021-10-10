---
issue: 2021-10
order: 202110-13
layout: article
category: DevTips
title: PSP Development Tips
author: MrOwnership
---

## Intro

Here you can find development tips from several developers with PSP launch day sets. They have been hard at work making the PSP launch the biggest system launch on RetroAchievements. Hope these tips will help you during your PSP set development.

## <a href="https://retroachievements.org/user/blendedsea" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/blendedsea.png" alt="blendedsea"> <span>blendedsea</span></a>
My experience working with PSP was fun and a nice new experience. It wasn't overly difficult to work with but I've also had experience with one of the most modern consoles we support, DS. One of the biggest walls was probably the pointers as they seemed to (for my game and many others') not be direct pointers. If devs and Jrs are looking for a way to expand their skills and experience, PSP is the perfect console for that.

## <a href="https://retroachievements.org/user/guineu" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/guineu.png" alt="guineu"> <span>guineu</span></a>
Did someone not mention the crashes while using savestates? 😄
I don't know other than the massive size of savestates (mine got up to almost 5Gb), it wasn't much different than other platforms.

## <a href="https://retroachievements.org/user/KingS1zzle" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/KingS1zzle.png" alt="KingS1zzle"> <span>KingS1zzle</span></a>
Working with the PSP has been a blast for me, the PSP was one of those handhelds I had at multiple points of my life and now with RA getting PSP support all that love that went into PSP awhile ago came rushing back. 

Unlike other times with the PSP, RA has given me an in-depth look into a game I once never thought I would ever see behind the curtains. As I worked with K-On I learned more than I thought I would, most of it was bit flags, but it gave me a whole lot of knowledge. 

Even though this might not help every future PSP developer, I would always suggest looking into a 100% save just so once and awhile you can flip between a 0% to a 100% and find a whole section of values changing and being able to know where and when they all might start/end.

## <a href="https://retroachievements.org/user/lordpsycho" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/lordpsycho.png" alt="lordpsycho"> <span>lordpsycho</span></a>
Working with the PSP is like any other recent console, really. You will have some games that have all the memory addresses you need to create clever achievements next to each other while others will have them scattered under pointers, and sometimes the values you find won't make much sense. My first step is always to find simple/common addresses (money, HP, level, stage number) and define if they are static or variable, then search around that part of the memory for other interesting things. Luckily the games I've seen so far on PSP are not as complicated (if I had to say, Harvest Moon GBA and GTA:Chinatown DS were more difficult to work with) but the idea is always to start from simple things and build up from there. If you want to do something but don't find reliable addresses, try doing it in a different way (can't find the flag to open a chest on a dungeon? Why not make an achievement to get the item at the correct map ID?) Feel burned trying to find something? Try a bit later, everything will make sense eventually.
My 2 cents on developing for PSP? Learn how to find pointers, basic. And be aware of red herrings, if you find 3 addresses that do the same, you only need 1 of them to be consistent.

## <a href="https://retroachievements.org/user/pinguupinguu" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/pinguupinguu.png" alt="pinguupinguu"> <span>pinguupinguu</span></a>
PSP has been a joy to work with and develop for so far. If you've been working with the smaller consoles, PSP may be a little intimidating if you end up with a tricky game to RAM dig for. 

For example, one game I had counted money gained overtime with a timer, rather than tracking an actual balance. Either this, or it was stored as what as is known as a floating point (A number with decimals basically). 

If you're looking to develop on this console, my advice is to take the time that you need, and walk away if you ever get frustrated. Don't give up on yourself!

## <a href="https://retroachievements.org/user/Ryudo" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/Ryudo.png" alt="Ryudo"> <span>Ryudo</span></a>
My experience with developing this set is that the memory has been a wild ride to say the least. FF4 reuses addresses for events and treasures depending on which game you're playing, making it troublesome to find things sometimes. Because of this we had to find some sort of game identifier that tells you which game you're playing. (FF4, Interlude, or The After Years). Additionally, TAY is split into tales, and the same problem occurred there. Events/treasures were being reused in each tale, so we had to find yet another identifier for each tale on top of it.

Pointers were a bit troublesome at first as well, we had to find pointers for player health/current status in battle, and also enemy health. At first we had some help with it, but Snowpin eventually managed to find it. I was also able to find a universal enemy pointer later on myself for TAY that updates the pointer values depending on which enemy you're targeting. This was a pretty cool find. The pointers can still be set to 24-bit, but you need to use an offset of 1xxxxxx. So if the offset is 0x1C, you'd actually get 0x100001C. The pointer values are almost always starting with 09xx.... or 08xx... (At least in this game)

Since we don't have a real working range for memory yet, RAM digging takes quite a bit longer (depends on the game of course too), since it scans ALL memory. This is something to keep in mind for devs/jrs who want to work on sets for the PSP.

## <a href="https://retroachievements.org/user/SlashTangent" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/SlashTangent.png" alt="SlashTangent"> <span>SlashTangent</span></a>
Think about your cheat protection carefully. There are a lot of different ways in which someone can cheat these games, much more so than was available in earlier console generations.
FamilyMan — Today at 11:26 PM
Logistics:

Save States are big, roughly 40MB, and loading between them frequently can crash RALib (at least at the time of writing this). 

Save. Often.

Don’t let the size of states have you shy away from creating them often, you’ll just need to be intelligent about when and where you make states. Once you complete a section of progression achievements, maybe zip your states to save space.

The further we get into console generations, the higher the chance that any given title will be longer and more involved. Spend extra time watching longplays, reading guides and getting hands on experience with the title than you normally would, it will come in handy. 

Memory:
Be prepared for a strong possibility of layered pointers. 

One problem I ran into was a dynamic statistic table that expanded from the middle-out as new stats were discovered, the table didn’t really use pointers, so I had to essentially scan the table using alt groups. 

One of the major identifiers in the above mentioned tables was ASCII debug variable names, typically you want to avoid using text when you can, but when deving PSP I found several variable names that were indicative of what the surrounding values represented, as long as these are consistent across languages (they should be, debug values aren’t often localized) you should feel free to use them if they will help you. 

Get comfortable with floats, I ran into a fair amount but didn’t need to use them personally, there are plenty of online converters, and Jamiras is working on adding float support to the current RA Toolset. 

Closing Thoughts:
PSP is extremely daunting and the dig can be disheartening, you may need to find creative ways to solve problems, and you likely won't find the perfect pointers/values you need first try. 

Keep at it and ask lots of questions.

## <a href="https://retroachievements.org/user/SnowPin" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/SnowPin.png" alt="SnowPin"> <span>SnowPin</span></a>
Don't get flustered by the amount of memory addresses that blast you in the face on your first scan. It's really no different then any other system, just more junk to burry.

## <a href="https://retroachievements.org/user/SporyTike" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/SporyTike.png" alt="SporyTike"> <span>SporyTike</span></a>
The PlayStation Portable handheld is definitely interesting when it comes to achievement developing. I feel like the games on this handheld differ a lot when it comes to difficulty. Some games have very easy memory which is easy to work with, but then there are games which use methods of saving memories which I never saw before for any other console. For example, I saw a game which uses multiple layers of pointers just to access one specific address, float point usage for simple information like current score and health and there was even a game which didn't use item IDs to know what the player has equipped, instead it stored this information with the actual object-names. That's why I think it's not the best console for the first or second set because of how tricky the memory could be, it could demotivate the developers giving them the wrong opinion that every game is like that. It's definitely manageable to make a set for the PSP, but I think you should have at least some basic experience before tackling it. And one advice I give for every console, specially for this one, if you have any problems finding memory or not knowing how to use memory you found, make sure to ask other devs for help. More brains can come up with more ideas and while one single person maybe doesn't know a solution, someone else maybe had a similar issue before and got it working. Even well experienced devs asks for help sometimes and there is nothing wrong about it.

## <a href="https://retroachievements.org/user/TeddyWestside" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/TeddyWestside.png" alt="TeddyWestside"> <span>TeddyWestside</span></a>
To be honest, I just got screwed by a pointer heavy game and had to use workarounds. Peggle on the other hand is like all the development I have done in the past, no different from any other system.

I guess if I have anything to say, it's about achievement creation in general. Part of the reason I enjoy making sets so much is being able to be creative with how I put them together. You need to think outside the box, problem solve, and that keeps it interesting. My main strength is persistence: I don't have a programming background/CS background, but I do have persistence and I will try and fail until I come out on top.

The thing is, what is straightforward, or the most logical approach may not be possible and/or problematic. For example, with Puzzle Quest the quests have a % associated with them. In the memory the % is tracked until the one preceding 100%, so if it's at 75% it will say 4b, however, it will not go to 64 even if you complete the quest, instead it will stay at 4b. Obviously there is something in the memory tracking that each individual quest has been completed, but whether it was buried in pointers or tracked in a weird way, I couldn't find it, so I came up with another solution.
I tracked where they were in the world, I looked for the quest being completed screen (something I could track) and then what rewards they got: whether that be XP, gold or both. This works because the reward amounts and the locations they are delivered are always different from one another - well, at least for the achievements I needed to make. Again, in an ideal world I would use quest win flags, but you basically work with the hand you are dealt. 

If I had my time over though, I would check the game's memory before committing. lol. It was brutal.

## <a href="https://retroachievements.org/user/wilhitewarrior" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/wilhitewarrior.png" alt="wilhitewarrior"> <span>wilhitewarrior</span></a>
Thankfully for me, devving Portable Ops wasn't too much different from devving PS1. One thing I noted is on PSP, pointers always seemed to begin with `09xxxxxx`. I believe bit 3 is active to show what type of pointer it is and then, because the dynamic addresses were all higher than `0x01000000` it would overflow 1 onto the `08` to get the pointed address. I resolve this issue by using a 24-bit pointer and adding 1 to that spot in order for the pointer to reach its proper destination.

Example:
<p align="center">
  <img src="https://i.imgur.com/uZHkjWZ.png"/>
</p>

## <a href="https://retroachievements.org/user/Zpeligo" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/UserPic/Zpeligo.png" alt="Zpeligo"> <span>Zpeligo</span></a>
I had the chance to develop achievements on a proper game without needing pointers. It was nothing different from what I'm used to.
However, searching for so much data can be troublesome.

When digging memory, I had duplicates on how the armor system was handled and altering the values directly in the memory inspector didn't help. 
What you see isn't what the game memory see. For many reasons, the more people ask for a newer platform, the harder it gets to find things.
Speaking of things, many things you interact within the game are tracked in the game memory.

On achievements making side, the biggest concern was definitely the save feature. In other words, you can load a game file directly while playing.
Having an address to counter that feature was plain hard to find but mandatory to use.

To any future developers, do not skip the knowledge you get from finding addresses in the memory inspector.
Save often and don't be afraid to take your time.
