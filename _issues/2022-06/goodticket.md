---
issue: 2022-06
order: 202206-01
layout: article
author: voiceofautumn
title: "The Anatomy Of A Good Ticket"
toc: true
---

## Introduction

_The following is a Markdown version of the Google Docs guide of which the latest version can be found [here](https://docs.google.com/document/d/1cDnXwvuxa0l6wmvcKSQrTZA3crvG4w2YPgbCIHugeTI)_

You’ve been grinding for hours to Catch ‘Em All in [Pokémon HeartGold](https://retroachievements.org/game/7212) or you’ve been sweating for days to clear the entirety of [Super Mario Bros. 2](https://retroachievements.org/game/1994) without ever dying to become the Dream Master. Full of excitement you throw that last pokéball at a wild Tauros or a radish at Wart, ready to hear that juicy achievement-unlocking sound. 

But your body stays tense. As the credits roll, no pop-up message appears in your vision, and no achievement has been unlocked on your profile. You’ve run into an achievement that for some reason is not working.

No reason to panic! RetroAchievements has a set way to deal with these issues. In this document we will go over:

* How to ensure that there is an actual issue with the achievement
* How to report that the achievement may possibly be not working correctly
* How to report this in a way that will actually help to solve the issue for other players in the future
* Steps you can take to potentially unlock the achievement without having to replay the entire game

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177409-6281b49c-cee2-43d4-8bc5-4288f75045c1.png" />
</p>

Turn on your system and let’s jack in!

***

## To Open, Or Not To Open, That Is The Question

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177467-1781703c-9078-48db-a3c7-71b3f005e508.png" />
</p>

RetroAchievements has been online for a while now, and through the years tickets have been opened for both the right and wrong reasons. This paragraph aims to give clarity on when you should open a ticket, and when you should not. In short: tickets should be opened if there is an issue with the actual logic of the achievement, causing it to either trigger at the wrong moment, or not trigger at all.

### Do’s

* Open a ticket if an achievement is not triggering and you went through the [checklist](https://github.com/RetroAchievements/RANews/wiki/In-depth-Guide:-The-Anatomy-Of-A-Good-Ticket#common-issues-checklist) to ensure you fulfill the criteria. This ticket can be used for a manual unlock (more on manual unlocks [here](https://github.com/RetroAchievements/RANews/wiki/In-depth-Guide:-The-Anatomy-Of-A-Good-Ticket#requesting-a-manual-unlock))
* Open a ticket if an achievement is triggering at a moment that is not intended based on the achievement description

### Don’ts

* Open a ticket to ask for help on how to complete the achievement
* Open a ticket to complain about or suggest changes to its difficulty, objective or point values (to suggest different point values, see the [Developer COC](https://docs.retroachievements.org/Achievement-Set-Revisions/#rescores))
* Open a ticket regarding artwork or spelling mistakes. (for this, contact [QATeam](https://retroachievements.org/user/QATeam))
* Open a ticket for a #manual-unlock in the discord server if an achievement did not trigger due to a server error / server outage.

### Etiquette

* Don’t be disrespectful/hateful towards developers when opening a ticket out of frustration.
* Write as many details as possible in your ticket. (see how to write a helpful ticket [here](https://github.com/RetroAchievements/RANews/wiki/In-depth-Guide:-The-Anatomy-Of-A-Good-Ticket#how-to-submit-a-good-ticket))
* The primary language on RetroAchievements is English, and so is the majority of developers. Make sure you write your ticket in English.

***

## Common Issues Checklist

You want to get right back to gaming, getting those juicy points. However, remember what we said before? “Tickets are intended to report issues with the technical logic of the achievement”.
Luckily, there is a quick checklist you can follow as a player to make sure you did everything you can to avoid unintentionally causing potential issues.

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177556-ad39a12c-0fa1-4141-8a1b-351467516601.png" />
</p>

### Check Your Emulator

Updating your emulator to the latest version is mandatory and one of the primary solutions to tickets that are not related to actual issues with the functionality of the achievement itself. 

As an example, see this[ overview](https://docs.retroachievements.org/Minimum-Required-Versions-for-Logic-Features/) of types of achievement logic that will not work with older versions of RetroArch. Another example is older builds not supporting newer platforms (such as Dreamcast or the upcoming PS2 at the time of writing)

### Check The Game Page, Achievement Page & Forum Topic

Some games (or individual achievements) require certain settings, in-game circumstances, emulator settings, freeze the achievements when using codes or require a certain type of emulator to function correctly. 

**Examples at the time of the latest update:**

[Denki Blocks](https://retroachievements.org/game/6759) requires players to use Save Slot 1

[Disney Dancing Museum](https://retroachievements.org/game/11530) will only function in RALibretro for some players

### Is Your Emulator Supported?

Over time, some cores are no longer supported for technical assistance and are used at your own risk, but are still available in RetroArch. [Source](https://retroachievements.org/viewtopic.php?t=14469)

***

## How To Submit A Good Ticket

So you learned when to open a ticket, now let’s get to the actual ticket itself. 
Tickets are like humans. They come in all shapes, forms and sizes. And just like we all have our preferences in humans, developers have their preferences in tickets: detailed and informative. And just like dating profiles, what causes developers to swipe left? An empty profile stating “didn’t trigger”. 

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177675-07af0954-c13c-435f-aba8-f36c829126d2.png" />
</p>

Let’s dive into the ticket creation interface and highlight why each piece of data is important to a developer!

### Getting To The Ticket Submission Form

In this guide, we will be focussing on submitting a ticket through the RetroAchievements website. To reach this form, go to the game page of the game you are playing and click the achievement. There, click “report an issue for this achievement.”

Alternatively, you can copy paste the following link followed by the achievement ID: https://retroachievements.org/reportissue.php?i=

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177746-e4d982a4-c12a-4fc1-a097-a4dae04a37ec.png" />
</p>

You should’ve reached the form above.

## Dissecting The Form

Next, let’s take every field and explain what it means for you as a player, and what it tells a developer, and hence why it is important.

### Issue

As a player, this is the field where you indicate if the achievement triggered at a time where it shouldn’t have, or if the trigger did not take place at all.

As a developer, this difference gives us an indication of what type of error could have been made in the logic.

### Emulator

As a player, this is the field where you indicate what emulator you are using.

Most developers develop their achievements in RALibretro. As a developer, this indication helps us to test the achievement in a different environment. In very rare cases, certain emulators might cause issues for certain games. This helps developers narrow down these cases.

### Emulator Version

As a player, this is the field where you indicate what version of the emulator mentioned above you are currently using.

Remember the [checklist?](https://github.com/RetroAchievements/RANews/wiki/In-depth-Guide:-The-Anatomy-Of-A-Good-Ticket#common-issues-checklist) This is a prime example of why some achievements do not trigger. Filling in an outdated version here will very quickly lead to the initial solution of developers asking you to update your emulator.

### Mode

As a player, this is the field where you indicate if you are playing in Softcore or Hardcore.

On older versions of RetroArch, Softcore savestates were not compatible with certain functions, such as hit counting. As a developer, this field is/was useful in combination with older emulator versions to narrow down softcore issues. Checklist anyone?

## Let’s Get Down To Business!

Pay attention class! The following two fields are the most important pieces of data you can give a developer when submitting a ticket. But currently, unfortunately, also the most ignored fields in general when users submit them. Let’s get a grip on our focus and continue.

### RetroAchievements Hash

As a user, the RetroAchievements hash is simply a string of letters and numbers that probably means nothing to you, unless you are initially searching for the correct file to use in your emulator. However, to a developer a hash can provide invaluable information. There is pretty much no excuse to not include the hash when submitting a ticket, and the only thing that will be achieved by not including it is a slower fix to the problem. 

Let’s start with how to find your hash. In any RA-Standalone Emulator, simply click “RetroAchievements” in the toolbar and select “View Game Hash”. You can even copy it with the click of a button. How convenient!

In RetroArch, start your game file and go to the Quick Menu. Here, scroll down and select “Information”. Your hash will be displayed here.

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177783-49d8eefe-7a64-429e-82a1-2a7b2332d4cb.png" />
</p>

But why is this piece of information SO important? Let’s switch to the developers point of view.

As RetroAchievements.org evolves, more and more games have multiple hashes linked. These hashes indicate which ROM the player is using. For example, this way they can tell which version of[ Pokemon Puzzle Challenge](https://retroachievements.org/game/726) you are using: Europe or USA/Australia.

Does it matter for a developer which version I am using? Yes! And much more than it may seem at first glance. To explain why, we need to dive into the basics of how achievements work.
Simply said: An achievement triggers when X = Y.

X is the address of the memory, and Y is the value of the memory. So let’s take a hypothetical situation: An achievement in [Pac-Man](https://retroachievements.org/game/12192) triggers when the score memory is equal to 1.000. In Pac-Man Arcade, the score is stored at **0x0681**. However, in a different version of the ROM, the score could be stored at **0x1789**. By indicating your hash, developers can investigate the issue in more detail with the correct ROM.

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177807-5252e922-c0f9-4f23-b8ab-256d145fc922.png" />
</p>

### Description

The description is the free-for-all arena. Here, you can grab any weapon from the arsenal and type in any information you can that could lead to getting the issue solved. 

<p align="center">
  <img src="https://user-images.githubusercontent.com/65286399/173177858-bf355f81-6181-4f58-853a-92ab2a66f7cc.png" />
</p>

Was it an achievement to grab 3 items? Explain to the developer in what order you grabbed the items. Finally caught that final Pokémon? Tell the developer which Pokémon it was, in what area, and why you used a Master Ball on a freakin’ Tangela to complete the Pokédex. Yes, you can copy & paste the RP into the ticket at the time, but there is so much more valuable information you can give a developer to work with. 

It is pretty self-explanatory why this section is so important for developers, yet this is the most heavily underused field in the majority of tickets. “Didn’t trigger” is the slowest way to get the issue resolved. Not only for you, but also for every future player that might run into this issue, which will in turn generate work for the administration full of volunteers that have to perform manual-unlocks and check proof. Be the change you want to see in the community and spread information like it’s love.

So, once you enter that arena, will you be the naked warrior that gets killed in the first fight? Or will you be the strongest gladiator the arena has ever seen? 

## Save files

Although save files are not mandatory when submitting a ticket, if the issue can not be solved, there is a good chance the developer will ask you to send your save file to them. If possible, try to keep a backup, or at least a save file at all of the games you are playing. Then, when a developer asks you to, you can assist them by sending the file. 
In RetroArch you can find your save files as .srm files in RetroArch > Saves.
In RALibretro you can find your save files in RALibretro > Saves.

***

## Requesting A Manual Unlock

You fought hard and proud for that achievement, and you did your best on providing the developer with the most informative and high-quality ticket possible to provide the community with valuable content. Now you want your reward! 

Apart from replaying the game, there is a process called the manual unlock at RetroAchievements. The following will be an explanation in the same style of the document, but gives no actual rights to any unlocks. For the official page on manual unlocks, click [here].(https://docs.retroachievements.org/FAQ/#how-can-i-get-credit-for-an-achievement-i-earned-but-wasnt-awarded)

### Proof

Make sure you have acceptable proof or evidence that you completed the achievement:
* A screenshot or video that show you are playing in Hardcore (if awarded for Hardcore)  and have completed the achievement
* An unlock of an achievement in the same line that has been awarded correctly (you got the achievement for 25.000 points but not 10.000 points).

### Process

* If you are in Discord, ping @manual-unlock in the #manual-unlock channel. You must be verified to access this channel
* Alternatively, [send a DM to RADmin](https://retroachievements.org/createmessage.php?t=RAdmin)

In your ping or DM, place a link to the quality ticket you made, which mode you were playing in (Softcore/Hardcore) and the proof.

***

## Closing Words

This document is intended to give directions on how to submit a quality ticket, give insight in a Developer’s point of view when handling tickets and create a general understanding of what each piece of information means behind its initial presentation.

The document is my personal view on a quality ticket. Although I personally think certains aspects of the process mentioned above should be mandatory, such as presenting a hash and an accurate description, these are not, nor am I trying to imply that they are. 

I hope the document can lead to a healthy discussion on both forums and Discord to see how we can improve the ticket system to better submit and handle tickets.

Nothing in this document gives a player nor developer any right or entitlement to any type of rewards, treatment, process or behavior. 

Thank you for reading up to this point, I hope it adds any type of value to your stay on RetroAchievements.
