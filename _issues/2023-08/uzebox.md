---
issue: 2023-08
order: 202308-01
layout: article
title: Uzebox Launch
author: 
---

By: <img src="https://retroachievements.org/UserPic/clymax.png" alt="" width="64" style="border-radius:50%"/> {% rauser clymax %} <img src="https://retroachievements.org/UserPic/Sutarion.png" alt="" width="64" style="border-radius:50%"/> {% rauser Sutarion %}


<p align="center">
  <img src="img/uzebox.png" />
</p>

Last month, RetroAchievements added support for one of the oldest "build your own" consoles with the addition of the Elektor TV Computer Games system.  This month heads to the opposite end of the timeline by adding support for another "build your own" console and RetroAchievements 50th supported console, the Uzebox!

The Uzebox is an 8-bit console, from 2008, that is:
* Made by a hobbyist, for hobbyists;
* Easy to assemble from off-the-shelf parts; and
* Easy to make games for.

The console exhibits a  “retro-minimalist” design philosophy.  How was this accomplished, you ask?  Well, it sounds simple, at least in theory:
* All of the graphics are handled in software.
* This simplified the design to just two chips. Namely: (i) a general-purpose microcontroller * overclockable to be compatible with (ii) a signal converter between color formats.
* Interrupts are used to drive the software engine.
* This spares game developers from the chore of counting CPU cycles.

What else makes this console special?  A few things come to mind.
* Games can be dropped onto a regular SD card and loaded on the fly.
* SNES controllers are supported by design.
* Like the general-purpose Arduino platform, the design of the Uzebox is open source, meaning anyone can make or sell their own version of the console. This means more choices for consumers.

What were the launch titles back then? They included:
* A Tetris DS clone (AVR Megatris);
* Arkanoid;
* Maze;
* Whack-a-Mole; and
* Super Mario Demo.

How did the console come about?  The concept was developed by Belogic, drawing inspiration from the 8-bit console generation.  One of the project's primary goals was to utilize readily available hardware components and tools, making it accessible to tinkerers and developers.   Component kits were sold that allowed players to build their own console without needing to source the components individually.   Many of the devices also supported classic hardware, such as the NES or SNES controllers.

Why did the creator make this console in the first place?
* Then-existing DIY consoles hadn’t garnered adoption.
* Many had multiprocessor designs.  This made them more complex to program for.
* Many were limited to black-and-white video and primitive audio.
* Some required counting CPU cycles.  This made them tedious to program for.
* None of them had any API support.
* None of them had any support forums for asking questions or sharing ideas.

Why did the creator choose that particular microcontroller chip?
* It included the most RAM and flash memory in a DIY-friendly package.
* It featured many I/O ports, timers, and peripherals.
* It was easy and inexpensive to be able to flash your desired program onto it.
* It supported the level of overclocking necessary to support the other specs of the project.

Does this console also come in other variants?  Yes!
* Some additional variants of this console simplify the design even further by cutting out the signal-converter chip.
* One example is the European variant, the Euzebox.
* This further simplification was possible because European TVs have RGB inputs.  This means that the pre-converted signals can be used sans conversion.
* Another such example is the arcade variant, the Uzebox JAMMA.

What tools are available to would-be game developers?
* The Uzebox API sits on top of the GNU C compiler tool chain and provides functions to display text, handle video and audio, access the SD card, and so on.
* A text editor, the Eclipse IDE, or Atmel’s AVR Studio can be used to write game code.
* An emulator, Uzem, is available to run and debug games.
* Also provided are helper tools, such as to convert graphics and sound.

What can’t the console do?  More powerful things, like networking support.  A next hardware iteration is needed to make that work.

What are the core specs?
* Clock speed of 28.6 MHz (overclocked).
* Supports 64K of addressable memory (16-bit address space).
* This is divided into 4K RAM and 60K ROM.
* 256 simultaneous colors with an RGB bit distribution of 3:3:2.
* 10+ video modes offering up to 360x224 in resolution.
* 32+ simultaneous sprites.

What are the specs for the audio, storage, and peripherals?
* 5-channel sound engine.  Includes 3 wavetable channels, 1 noise channel, and 1 PCM channel.
* Audio is 8-bit mono and mixed at around 15 Khz.
* PS/2 keyboard interface.
* MIDI IN: allows creating music directly on the console via a sequencer.
* Compatible with two SNES (default) or NES (optional) controller ports.
* SD/MicroSD and FAT16/FAT32 support.

In more ways than one, the Uzebox game console is a perfect companion to the RetroAchievements community.   Both communities are a testament to the DIY spirit and were born out of a love for retro gaming.  This open-source, community-driven project offers an approachable way to make games that blend retro vibes with modern sensibilities.  In fact, new games are still being released for the console, with the most recent, UzeMaze, being added in March 2023.

For more on the Uzebox, their website is at: [http://www.uzebox.org/](http://www.uzebox.org/).

Their wiki offers many of the games for free download: [https://uzebox.org/wiki/Games_and_Demos](https://uzebox.org/wiki/Games_and_Demos).

Additional sources used for this article are listed as follows.  
[https://libregamewiki.org/Uzebox](https://libregamewiki.org/Uzebox)  
[https://github.com/uzebox/uzebox](https://github.com/uzebox/uzebox)  
[http://cdn.computerworld.com.au/article/392560/uzebox_an_open_source_hardware_games_console/](http://cdn.computerworld.com.au/article/392560/uzebox_an_open_source_hardware_games_console/)

# Launch Sets

| Game                                                                                                                                                                                                                                                                           | Developer                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| <a class="gameicon-link" href="https://retroachievements.org/game/24713" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076965.png" alt="2048"> <span>2048</span></a>                                                         | {% rauserpic Tayadaoc %}                                                        |
| <a class="gameicon-link" href="https://retroachievements.org/game/24715" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076459.png" alt="Alter Ego"> <span>Alter Ego</span></a>                                               | {% rauserpic tomojin %}                                                         |
| <a class="gameicon-link" href="https://retroachievements.org/game/24718" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076976.png" alt="B.C. Dash"> <span>B.C. Dash</span></a>                                               | {% rauserpic TheMysticalOne %}                                                  |
| <a class="gameicon-link" href="https://retroachievements.org/game/24712" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076767.png" alt="Bomber"> <span>Bomber</span></a>                                                     | {% rauserpic televandalist %}                                                   |
| <a class="gameicon-link" href="https://retroachievements.org/game/24724" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/080208.png" alt="Bugz"> <span>Bugz</span></a>                                                         | {% rauserpic AuburnRDM %}                                                       |
| <a class="gameicon-link" href="https://retroachievements.org/game/24725" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076693.png" alt="Chickens In Choppers"> <span>Chickens In Choppers</span></a>                         | {% rauserpic Hexadigital %}                                                     |
| <a class="gameicon-link" href="https://retroachievements.org/game/24800" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076588.png" alt="Circuit Puzzle"> <span>Circuit Puzzle</span></a>                                     | {% rauserpic MGNS8M %}                                                          |
| <a class="gameicon-link" href="https://retroachievements.org/game/24733" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076434.png" alt="Donkey Kong"> <span>Donkey Kong</span></a>                                           | {% rauserpic WanderingHeiho %}                                                  |
| <a class="gameicon-link" href="https://retroachievements.org/game/24805" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076638.png" alt="Flight of a Dragon"> <span>Flight of a Dragon</span></a>                             | {% rauserpic Excessiveiser %}                                                   |
| <a class="gameicon-link" href="https://retroachievements.org/game/24739" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076635.png" alt="Frog Feast"> <span>Frog Feast</span></a>                                             | {% rauserpic MaddieKittyTV %}                                                   |
| <a class="gameicon-link" href="https://retroachievements.org/game/24810" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/077988.png" alt="Hattrick"> <span>Hattrick</span></a>                                                 | {% rauserpic ZamArch %}                                                         |
| <a class="gameicon-link" href="https://retroachievements.org/game/24743" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076971.png" alt="Holey Moley"> <span>Holey Moley</span></a>                                           | {% rauserpic DarkyAndreas %}                                                    |
| <a class="gameicon-link" href="https://retroachievements.org/game/24754" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/078670.png" alt="Iros"> <span>Iros</span></a>                                                         | {% rauserpic TheJediSonic %}                                                    |
| <a class="gameicon-link" href="https://retroachievements.org/game/24744" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/081276.png" alt="Joyrider"> <span>Joyrider</span></a>                                                 | {% rauserpic Etron %}                                                           |
| <a class="gameicon-link" href="https://retroachievements.org/game/24752" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/078487.png" alt="Laser Puzzle"> <span>Laser Puzzle</span></a>                                         | {% rauserpic Maximdraco %}                                                      |
| <a class="gameicon-link" href="https://retroachievements.org/game/24767" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076470.png" alt="Melli's Retro Land"> <span>Melli's Retro Land</span></a>                             | {% rauserpic LordAndrew %}                                                      |
| <a class="gameicon-link" href="https://retroachievements.org/game/24758" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/077672.png" alt="Pengo"> <span>Pengo</span></a>                                                       | {% rauserpic Sutarion %}                                                        |
| <a class="gameicon-link" href="https://retroachievements.org/game/24759" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076504.png" alt="Reels of Fortune"> <span>Reels of Fortune</span></a>                                 | {% rauserpic voiceofautumn %}                                                   |
| <a class="gameicon-link" href="https://retroachievements.org/game/24763" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/078088.png" alt="Ruby Crush"> <span>Ruby Crush</span></a>                                             | {% rauserpic Hexadigital %}                                                     |
| <a class="gameicon-link" href="https://retroachievements.org/game/24773" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076714.png" alt="Space Age"> <span>Space Age</span></a>                                               | {% rauserpic Snow %}                                                            |
| <a class="gameicon-link" href="https://retroachievements.org/game/24774" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/080605.png" alt="Space Invaders"> <span>Space Invaders</span></a>                                     | {% rauserpic Casually %}                                                        |
| <a class="gameicon-link" href="https://retroachievements.org/game/24798" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076567.png" alt="Stormforce"> <span>Stormforce</span></a>                                             | {% rauserpic LogicalFallacy %}                                                  |
| <a class="gameicon-link" href="https://retroachievements.org/game/24775" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076438.png" alt="Submarine"> <span>Submarine</span></a>                                               | {% rauserpic Sines %}                                                           |
| <a class="gameicon-link" href="https://retroachievements.org/game/24777" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076605.png" alt="Tetris"> <span>Tetris</span></a>                                                     | {% rauserpic ThatAmericanSlacker %}                                             |
| <a class="gameicon-link" href="https://retroachievements.org/game/24997" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/079184.png" alt="Toorum's Quest"> <span>Toorum's Quest</span></a>                                     | {% rauserpic Brandovsky %}                                                      |
| <a class="gameicon-link" href="https://retroachievements.org/game/24801" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076770.png" alt="UzeMaze"> <span>UzeMaze</span></a>                                                   | {% rauserpic pinguupinguu %}                                                    |
| <a class="gameicon-link" href="https://retroachievements.org/game/24783" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/080855.png" alt="Uzesweeper"> <span>Uzesweeper</span></a>                                             | {% rauserpic Amir96lx %}                                                        |
| <a class="gameicon-link" href="https://retroachievements.org/game/24781" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/078596.png" alt="Uze Snakes"> <span>Uze Snakes</span></a>                                             | {% rauserpic xnaivx %}                                                          |
| <a class="gameicon-link" href="https://retroachievements.org/game/24789" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076615.png" alt="XOR"> <span>XOR</span></a>                                                           | {% rauserpic ladynadiad %}                                                      |
| <a class="gameicon-link" href="https://retroachievements.org/game/24790" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/079633.png" alt="Zombienator"> <span>Zombienator</span></a>                                           | {% rauserpic KingS1zzle %}<br>{% rauserpic Pudpod %}<br>{% rauserpic StingX2 %} |
| <a class="gameicon-link" href="https://retroachievements.org/game/24793" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/079636.png" alt="Zooming Secretary"> <span>Zooming Secretary</span></a>                               | {% rauserpic KingS1zzle %}<br>{% rauserpic Pudpod %}<br>{% rauserpic StingX2 %} |
| <a class="gameicon-link" href="https://retroachievements.org/game/24755" target="_blank" rel="noopener"> <img class="gameicon" src="https://retroachievements.org/Images/076828.png" alt="~Hack~ Megatris: Scoring Edition"> <span>~Hack~ Megatris: Scoring Edition</span></a> | {% rauserpic clymax %}                                                          |
































