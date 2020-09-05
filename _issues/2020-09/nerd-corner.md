---
layout: article
issue: 2020-09
author: meleu
category: Nerd Corner
title: Why Libretro Is So Important For RetroAchievements
toc: true
order: 202009-90
---

## Intro

In August/2020 the infrastructure of the libretro/RetroArch project was the target of a cybercrime attack. Such unfortunate event brought some atention to the project. And in this article I talk a bit about what happened and also try to bring to the knowledge of the RetroAchievements community what exactly the libretro and RetroArch projects really are and why we owe them a big gratitude.

Hopefully it can bridge the gap between endusers and the crazy nerds who do the hardwork, creating the tools we use to have a lot of fun.

**Note:** this article is almost like a transcript of the RAPodcast's episode "An Update Regarding Libretro". If you prefer to listen to it, [check it out here](https://youtu.be/LRI9cosFOWk).


## TL;DR


**No malicious code were added to RetroArch, at all.**

The attack that happened last month was aimed at deleting libretro programmers’ work and taking the tools used in their infrastructure out of operation. Specially a tool named buildbot.

So, when it comes to your data, your devices, there’s no need to worry.

Fortunately the buildbot and the code repositories are mostly restored. But they’re still working to move to a more powerful server and better automated backups.

If you want to support them to keep up their awesome work, consider a donation: <https://patreon.com/libretro>.

We, at RetroAchievements, use a lot of the work being done by the libretro project to offer to our community a wide variety of emulated systems supporting RetroAchievements and also a wide variety operating systems where you can play retrogames with achievements.

So, rest assured that by supporting them you’re also supporting RetroAchievements.



## "RetroArch was hacked?!" What exactly happened?

In 2020-August-16, the libretro's project key infrastructure was the target of a cybercrime attack. The attacker did the following damage:

- Put important infrastructure services out of operation. Specially a tool named buildbot.
- Deleted the history of code changes of several code repositories. Wiping months of contributions from many programmers to several emulators and RetroArch.

While the buildbot server was out of service, RetroArch users were unable to use the Core Updater, neither the Update Assets, Update Overlays and Update Shaders (more about the buildbot and why it's so crucial for the libretro project later).

**Note:** I'm intentionally simplifying things for an audience of non-programmers. If you want more technical details, [check the libretro's annoucement about the incident](https://www.libretro.com/index.php/hacker-vandalised-our-buildbot-and-github-organization/).


### Should people be concerned about having RetroArch installed on their devices?

First and foremost: 

**No malicious code were added to RetroArch, at all.**

You're **not** going to be hacked just because you have RetroArch in your device. You're **not** going to have a virus or something on your computer just because you have RetroArch installed.

As the attacker aimed only at deleting the source code and putting important pieces of libretro's infrastructure out of operation, specially a tool named buildbot.

This only affected endusers by preventing them from using the Core Updater. When it comes to user's data, user's devices, there's no need to worry.

Fortunately the buildbot and the code repositories are mostly restored. Users can now use the Core Updater again.


## What's the difference between libretro/RetroArch/RALibretro? 

### libretro as an organization

Libretro is the name of their organization. And it is responsible for maintaining a massive number of code repositories. Such repositories keep the work from several programmers around the globe. They contribute with code for RetroArch and a huge amount of different cores (which are the actual emulation code).

### libretro as an API

**Libretro** is not only the name of the organization, it's also the name of a piece of software used by RetroArch and the cores, allowing them to communicate with each other. This kind of software is known as **API**, and it stands for Application Programming Interface.

That fancy name has the "interface" term on it because an API allows one piece of software to communicate with another piece of software. Therefore, creating an interface between them.

This setup is handy because it allows each programmer to focus on their area of expertise/interest.

### actual emulation code (aka cores)

When an emulator programmer decides to write their code using the libretro API they can put their main focus on the actual emulation code, which means the code responsible to emulate the original hardware.

And by using the libretro API, they're agreeing to write their code being able to "speak the libretro language".

Those hardware hackers who write emulation code (aka core), don't need to worry to much about User Interface decisions, like how people will configure their controllers, how they will save their progress, which folder will be used for save states, how they will login into their RetroAchievements account, and stuff like that. Again, they can focus on the actual emulation code.

All those User Interface decisions are done by **RetroArch**, which is also able to "speak libretro".


### RetroArch, the frontend

Software interfacing only with another software is not really useful, right? Humans must make use of it somehow.

And that's where RetroArch comes to play. **RetroArch** is a kind of software that programmers call as **frontend**. It's the software responsible to interact with users.

So, here's how stuff works:

- actual emulation code (aka core) "speaks libretro".
- RetroArch also "speaks libretro".
- therefore RetroArch and emulation code are able to communicate between them.
- users know how to interact with RetroArch.
- therefore users are now able to play all those emulators via RetroArch.


### RALibretro, another frontend

**RALibretro** stands for "RetroAchievements libretro", and it's another frontend using the libretro API. So, we can say that it also "speaks libretro".

Turns out that RALibretro is coded with the tools needed to create achievements.

As I said, programmers can focus on their area of expertise. And the current RALibretro maintainer, {% rauser Jamiras %}, is also an achievement creator.

So, as a knowledgeable programmer and also an achievement creator, he's the perfect person to improve the tools used to create achievements.


### Summing Up

- libretro is an API and it allows different pieces of software to communicate between them.
- the cores are responsible for the actual emulation. They can communicate with RetroArch (and RALibretro) because they use the libretro API.
- RetroArch is a frontend for the libretro API. It's the software responsible to interact with users. It acts as a multi-emulator, but the actual emulation is performed by the cores. It's only able to communicate with the cores thanks to the libretro API.
- RALibretro is also a frontend for the libretro API, but coded with the tools needed to create achievements. The actual emulation is also performed by the same cores used by RetroArch.


## Why is the RetroArch's interface so clunky?

I think what causes the vast majority of complaints, is the lack of an interface with Microsoft Windows look’n’feel.

When programmers decide to create an application they must decide where their app will run. And if they decide, for example, to run it on Windows, they can take advantage of some libraries that make their job a way easier. Libraries that help them to create windows, popups, buttons, menus, and all this kind of widgets.

But there’s a trade-off here.

For example, the programmers can use a Microsoft Windows library to save coding time. They will have an easy way to create and use all those widgets. So they won’t need to code everything from scratch. But by doing this they are eliminating a big portion of potential users who don’t use MS Windows.

Turns out that one of the design goals of RetroArch is to support as many operating systems as possible.

And they’re doing a pretty good job at that front. We can run RetroArch in a wide range of platforms.

Such as:

- Windows
- Linux
- macOS
- Android
- iOS
- PlayStation Vita
- PlayStation 2
- PlayStation 3
- PlayStation 4
- PSP
- Xbox One
- Raspberry pi
- GameCube
- Nintendo Wii
- Wii U
- 3DS family
- Nintendo Switch

But, in order to be able to run in all those platforms, they need to not be dependent on so many external libraries.

That’s why you don’t see all those easy-to-use widgets you usually see on a typical Windows application.

They need to run RetroArch, for example, in a PS Vita, 3DS, Xbox One… And there are many differences between all those platforms, many of them doesn't even support mouse or keyboard. And they can’t rely on specific libraries.

So, back to the RetroArch’s user interface topic: as they can’t be dependent on specific libraries, all the huge majority of the code must be written from scratch. And to add a simple thing, a lot of code needs to be actually written.

And it takes time to make it work on all those platforms without breaking things.

I’ve already added some achievement related features to RetroArch before, and I can tell you: it looks like surgery.

To add a simple option, for example, to toggle hardcore mode, you need to write dozens of lines of code, on several files.

And you have to be extremely careful to not break things for the platforms you’re not even able to test.

In my case, I need to mind the platforms that don’t support achievements, to avoid messing them.

I’ve been using RetroArch for more than 5 years now, and I can assure you they made awesome improvements in their user interface.

But well, it won’t look like a typical Windows application. Never, I guess.

By the way, there’s another frontend for the libretro API that aims to be as simple as possible: Ludo. It aims to be as simple as possible and is targetted to desktop users only. Unfortunatelly it doesn’t support achievements, but, to be honest it makes sense: they aim to be simple and the achievements feature is not exactly simple.


## Why is libretro so important for the Retroachievements community?

No matter if you’re an achievement creator or just a player, the libretro project is extremely important for two reasons:

**1st**: we can “easily” add support for new consoles by using their emulation code (cores) on our frontend: RALibretro.

**2nd**: the RetroAchievement players can play in a multitude of platforms, such as Windows, Android, iOS and Linux, but not limited to these ones.

That’s possible because the libretro project maintains emulation code for dozens of emulated platforms.

The classics:

- Atari 2600
- NES
- Super Nintendo
- Nintendo 64
- Gameboy
- Master System
- Mega Drive
- Dreamcast
- PlayStation 1
- PlayStation Portable
- thousands of arcade games

Weird things like

- Nintendo Virtual Boy

Not really famous systems like

- 3DO
- Atari Jaguar
- Atari Lynx
- Wonderswan

Well, I could list more systems, but it would be really tedious.

Another interesting aspect of the libretro project is that emulation hackers can also choose how they will approach to the emulation thing.

Some of them want to prioritize performance. So they can run their emulators even on lowspec computers.

Some other programmers may want to prioritize accuracy. Or fidelity to the original hardware. And this can sometimes require a powerful computer to run the emulator.

By the way, this is the reason why we have a huge list of cores emulating the same console. Having different options is useful (specially for people who don’t have powerful machines), but it also srings confusion to newcomers.

“Oh god! Which core should I use?!”. If you’re RetroAchievements fan, then be sure to check the [core compatibility list](https://docs.libretro.com/guides/retroachievements/#cores-compatibility).


## What exactly is the buildbot?

The buildbot is a crucial part of the libretro infrastructure, and many users use it without even realizing how important it is.

The libretro project maintains a massive number of code repositories (more than 250). There are dozens of programmers around the world submitting code for those repositories.

What the buildbot does: it’s a tool that is “constantly” getting the code from all those repositories and building them for a wide range of target platforms.

For example, when a programmer make an improvement in a core, the code is submitted to the repository. And then the buildbot takes the code and builds the files needed to run that code on all those platforms I mentioned before (Windows, Android, PS Vita, etc.)

Think about it for a minute: two hundred repositories constantly receiving code changes. Dozens of target platforms to run that code. It would be impossible to build all of this and keep everything up to date, if it had to be done by a human.

If you can easily go to the Core Updater and get the updated version of the core you use to emulate your favorite console, it happens thanks to the buildbot.

Getting the code from all those repositories and building them for all those target platforms, it requires a good amount of bandwidth, processing power and storage (and the recent attack made clear that they need more storage for frequent backups). And it brings us to the next topic…


## How can we help the libretro project?

As you can see they do need a robust infrastructure to keep everything up and running.

So, I suggest that every retrogamer reading this to at least consider making a donation to the libretro project.

It can be done via patreon: <https://patreon.com/libretro>.

Or via github: <https://github.com/sponsors/libretro>.


## Outro

I hope this article was able to show, even for non programmers, the beauty of the libretro’s architecture.

How that modularity, allows each programmer to choose the problem they want to solve and the approach they wanna take. Also allowing them to combine their work to create amazing different things.

