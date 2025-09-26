---
issue: 2025-09
order: 202509-01
layout: article
title: NES RetroAchievements Adapter
author: odelot
toc: true
toc_float: false
---

# NES RetroAchievements Adapter

> **Hi, my name is odelot, and it’s been two days since I last bought a physical NES cartridge!**

## Intro

Yes, I’m one of _those_ collectors, been hoarding since 2002. And not just hoarding, I actually play the damn things too!

Relax, I’m not an emulator hater. On the contrary, I think emulators are absolutely vital to keep these classics alive and accessible. They saved me when I was 11 (1997) and desperate to play Pokémon Red. They introduced me to Chrono Trigger and Super Metroid back in 2000. Long live emulators, may Zeus keep them alive forever.

**BUT**, since I’ve been slowly collecting the originals for more than 20 years, of course I want to play _those_! And not just play them, I want to track my progress, have it written somewhere, get that little push to actually finish them.

<p align="center">
<img src="https://iili.io/KYs04Mx.md.jpg"  width="70%" >
<p align="center"><i>a load of motivation to create the adapter</i></p>
</p>

I even started a kind of “retro game book club,” where my friends and I pick games, play them, then rant about our experiences on Facebook. It gave us that sense of record and, more importantly, motivation.

But when I played on PS3, I realized something: achievements really helped me. They logged progress, pushed me forward. And that’s when I found RetroAchievements.

And WOW. I was floored by the sheer size of RA, the community, the effort, the fact that achievements exist for basically every single library.

## Motivation

Naturally, I wondered: “Can I use all my junk? The old consoles, CRT TVs, cartridges, or at least an Everdrive?” The answer was: nope 😢. Some of my friends told me they beat games on the console, then beat them again in emulators just to unlock the achievements.

But here’s the problem: I’m not exactly a pro gamer. Beating a game once already takes me ages. Beating it _twice_? Forget it. So even though I wanted to, I didn’t start using RA… yet.

Fast forward to 2023 when BrokeStudio released **[Super Tilt Bro](https://www.super-tilt-bro.com/)** for NES. It had a Wi-Fi chip inside and, holy crap!, it allowed online matches. I shared it with my friends: “Maybe something like this could bring RA to real consoles!” Their reaction: “Didn’t know it was impossible, good thing you didn’t either.” 😂 But the seed was planted.

<p align="center">
<img src="https://supertiltbro.wontfix.it/super-tilt-bro-images/miscs/stb_cart_pcb.png"  width="70%" >
<p align="center"><i>Super Tilt Bro gave me this unlikely idea</i></p>
</p>

## Enough Thinking, Let's Do It!

Then in 2024, I had garden leave from work, a whole year off. That little challenge from my friends came back to me: _How far can I actually go with this?_ And so began my one-year quest to bring RA to real hardware.

### First Achievement: Monitor Console Memory

I figured RA worked by monitoring console memory. To confirm, I dug into the source code and... bingo! That was it.

(Side note: if RA weren’t open source, this project would have been dead on arrival. Open source is life! You stand on the work of dozens, and then dozens more can stand on yours. Big love to the RA community for being open source ❤️)

But of course, it was more complicated. Achievements aren’t just raw memory reads, they use operators and conditions. I grabbed my duplicate [Rad Racer](https://retroachievements.org/game/1900) cart, found a simple achievement using just the `=` operator, and tried it out.

<p align="center">
<img src="https://odelotstuff.wordpress.com/wp-content/uploads/2025/04/20240529_022345.jpg"  width="70%" >
<p align="center"><i>Rad Racer, the guinea pig – I created a love relationship with this game ❤️!</i></p>
</p>


My thought: “NES runs at 1.7 MHz. Pico at 150 MHz. ESP32-S3 at 240 MHz. There’s no way it can’t keep up with the bus, right?” Oh, there’s a way alright. Spoiler: it failed hard. I tried muxes, IO expanders, CPU tricks, nothing could match the NES cadence.

Do you know [NESDEV](https://www.nesdev.org/wiki/Nesdev_Wiki)? Honestly, I think they’ve documented the NES in more detail than Nintendo ever did. Their wiki and forums were like a lighthouse guiding me through the storm. Many times, when I was stuck, I’d find salvation in a random thread from years ago.

And then came the user Calima. Out of nowhere, he dropped the magic words: _“Hey, maybe the Pico’s **PIO** could help?” A miracle!

For those who don’t know, [PIO](https://www.raspberrypi.com/news/what-is-pio/) (Programmable I/O) is like having a tiny assembly-powered sidekick living inside the Pico. You can teach it to read the bus in parallel, DMA the data straight into RAM, and let the CPU just try to keep up.

After a few iterations of me banging my head against the keyboard… **boom, it worked!**

<p align="center">
<img src="https://odelotstuff.wordpress.com/wp-content/uploads/2025/04/whatsapp-image-2025-04-03-at-08.54.21.jpeg"  width="70%" >
<p align="center"><i>first achievement unlocked! a happy day - thanks JonnyRetro for making this achievement 10 years ago</i></p>
</p>


### Second Achievement: Detect When An Achievement Is Unlocked

I detected my first achievement! (Rad Racer, simple equality check, but still!) Then I realized: crap, I’d have to implement all operators by hand. BUT (cue the heavens opening), RA devs provide the **[rcheevos](https://github.com/RetroAchievements/rcheevos)** library. And oh boy, what a gift. Super flexible, optimized, written in C, and unbelievably, it ran _perfectly_ on the Pico. Zero hacks. Just worked. [Leiradel](https://github.com/leiradel), [Jamiras](https://retroachievements.org/user/jamiras), RA devs, you’re legends.

Now I was detecting _all_ types of achievements. Woohoo! But of course, bigger bosses were waiting, Contra-level ones.

### Third Achievement: Detecting Frames

The cart slot doesn’t give you a “frame” signal. My hack: most games update the sprite list (OAM) each frame, so I used that. But some games rely more on background tiles (hello Super Punch-Out!! and Chip ‘n Dale bosses). For those, I added a fallback: just simulate frames at 60Hz.

### Fourth Achievement: Game Identification

Then came a **3-month nightmare**: cartridge identification. To fetch the right achievements, I need to read the cart and compute the RA hash. But the console kept interfering with the bus. My solution: add a switch to cut the bus, let the Pico read directly, then reconnect. Cool, right? Except… if I turned the console off and on, the adapter couldn’t detect the cart anymore. I had to wait 5 minutes before trying again. WTF?!

I rebuilt the circuit three times. Tried different chips. Nothing. ChatGPT kept sending me down wrong paths. I almost threw the whole protoboard into a fire, it had more wires than a spaghetti factory and made terrible connections.

<p align="center">
<img src="https://iili.io/KYLdEtj.md.jpg"  width="70%" >
<p align="center"><i>almost threw it by the window</i></p>
</p>

Desperate, I went to [my friend GH](https://www.facebook.com/guilherme.hernandes.585/)’s place. He was helping me since the beginning brainstorming with me, keeping me sane, and eventually becoming the father of the final miniaturized PCB design (more on that at the end). We debugged with an oscilloscope for hours. No progress. Until GH dropped: “Why not try another cart instead of Rad Racer?” And guess what, it worked! Turns out Rad Racer uses a mapper*, and mappers don’t guarantee they boot from bank 0. That was it! Once again, open source saved me, I fixed the problem inspired by the [OpenSourceCartReader project](https://github.com/sanni/cartreader) solution.

(*mapper was an additional chip that could increase the possible size of a NES game, switching between ROM banks. Sometimes it also gave some additional features. One of the reasons to emulate NES and create a NES everdrive is not so simple)

### Final Achievement: Show The Badge On Unlock

Another issue: how to show achievements without video overlay. Messing with video signals or the PPU would’ve been insane. So I slapped a tiny display on the adapter. Some people love it, others hate it, it’s optional. You can see the unlocked achievement and badge on it. And since people asked, I also crammed a tiny web server + websocket into the ESP32 so you can mirror the screen on your phone or laptop.

<p align="center">
<img src="https://odelotstuff.wordpress.com/wp-content/uploads/2025/04/telaadapter-1.gif?strip=info&w=640"  width="70%" >
<p align="center"><i>lcd screen - love it or hate it</i></p>
</p>

The toaster-style NES (American model) was another headache, with its cursed loading tray. GH shrank the PCB as much as possible (amazing work, worked on the first try), and I, being a computer scientist, not an industrial designer, modeled a 3D case inspired by the Game Genie, so the display could poke out. Not perfect, but hey, it works.

## :trophy: Project Mastered!

And that’s it, I finished the project! I’m ridiculously happy. Big thanks to RA admins, the community, and my friends who listened to me ramble endlessly and still cheered me on. And also to JonnyRetro, who created the first achievement I unlocked with the adapter, and to whom I will give the first unit I built (the one below, with RA logo ❤️).

<p align="center">
<img src="https://github.com/odelot/nes-ra-adapter/blob/main/images/version1.0.jpg?raw=true"  width="70%" >
<p align="center"><i>final version - you don't need to open our console anymore 🙌</i></p>
</p>

I recently demoed it at a retrogame event, and people went nuts. Some already knew RA, others had no idea it even existed and were amazed. Pretty sure some became new RA users on the spot.

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/-Vo8XGB4hvg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<p align="center">
<i>you can play even on the toaster! literally!</i>
</p>
</p>

Thanks for letting me share my baby with you (my proudest contribution as a computer scientist). I hope everyone who wants to try it manages to build one and has a blast with it!

## FAQ

Of course, I kept getting two tough questions (you might be wondering too):

1.  **Does it work with Everdrive?** Sadly no. When the adapter tries to read the cart, it just finds the Everdrive menu, not the game. Plus, cheats and save states would kill hardcore mode. Originals are expensive, but repro carts are cheap and work fine.
    
2.  **How much does it cost and where can I buy it?** From day one, I never planned to sell this. That goes against RA’s non-profit spirit. The whole idea was always to share everything free on [GitHub](https://github.com/odelot/nes-ra-adapter), PCB, 3D parts, source code. Anyone can check it out, and maybe devs will even take it further to other consoles. If you want one but can’t build it yourself, team up with friends and ask your local console modder, they’re more than capable of making it happen.


