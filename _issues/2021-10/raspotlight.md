---
issue: 2021-10
order: 202110-90
layout: article
author: meleu
category: RASpotlight
title: RASpotlight - MrOwnership
---

## Intro

For this month we have in the spotlight the guy who implemented some cool improvements on the website in the last couple of years. Things that we see as "natural" today (like set requests, detailed developer stats, jr-dev role, and site awards reordering) needed to be implemented by someone. And this is one of those guys who got their hands dirty to implement the improvements he wanted to see on the website.

Let's know a bit more about:

<div class="bingo-winner">
  {% rauserpic MrOwnership %}
</div>

## Interview with MrOwnership

#### meleu

> Let's start with your background as a (retro)gamer. How/when did you start your gamer life? Which console and what were your first favorite games?

#### MrOwnership

It's difficult to think of a defining moment when my life as a gamer started. My earliest memory of video games was watching my father play a MS-DOS Wheel or Fortune game that released in 1987. At the time I was to young to understand what was going on, but the black and yellow color scheme of that game is something that I will never forget. I would say my life as a gamer really started a in the mid 90's when I actually could understand and play games myself. I come from a large family, I am one of seven kids, so video games was always something that would, for the most part, keep me and my brothers out of trouble. We grew up owning a Sega Genesis and a Sega Game Gear. Streets of Rage 2, Rocket Knight Adventures, and Sonic the Hedgehog were among my favorites for Sega Genesis. Sega Game Gear didn't get nearly as much use, given that it drained AA batteries like it was nobody's business, but I had a few Sonic and sports games on there that I would occasionally play.

#### meleu

> Man, you were lucky! My dad was one of those who believed that videogames was a waste of time. It required a lot of insistence from me and my brothers to make him by us an Atari 2600. *laugh*
> 
> How and when did you discover the RetroAchievements project? What was your first impression?

#### MrOwnership

I first learned about RetroAchievements in June of 2017. I was building a 2 player RetroPie bartop arcade machine and was going through some of the settings when I saw mentions of the term "cheevos". Not knowing the term, I started looking into it and found the RetroAchievements site. At the time I just ignored it, I've never been much of an achievement hunter. I play games on steam and get achievements there but I've never been one to care much about getting all achievements for any given game. It wasn't until several months later when I went back to RetroAchievements to create an account just to see what it's all about. I played a lot for about a month just trying to master some of my favorite games childhood games, after that I just played a little here and a little there for about a year. It wasn't until January of 2019 when I got a lot more involved in the community by joining the Discord Server and starting to create achievements myself.

#### meleu

> What a coincidence! The RetroPie project was also what brouhgt me here...
> 
> That mix of hardware and software hacking is indeed really exciting. Currently there are plenty of options for those who just want to turn on a device and play, but fortunately there are also options for those who have fun getting their hands dirty building their own things.
> 
> Back to RA: What was your motivation to start creating achievements?

#### MrOwnership

I had two main reasons for getting into achievement development. First was to create achievements for my childhood games that didn't already have a set. There were a handful of games that I played all throughout my childhood that I was kind of bummed out about when learning that there was no achievement set created for them. Getting involved in achievement creation was my way getting a set finally create for those games as well as being able to put my own spin on the achievement set. Second was to find another hobby involving more than just playing video games. I had done a good amount of mod menu, memory digging, and cheat code creation for Wii games back around 2010. With the Wii scene dead, achievement creation was a way to fill that void. Before reading up on the developer documentation I figured achievement creation had to be similar to creating cheat codes for Wii games, the only difference here is that instead of setting values at certain addresses we are checking those values to see if they meet the criteria for an achievement to trigger.

#### meleu

> When you started playing with the Memory Inspector, were you familiar with concepts like bit, byte, hexadecimal, little endian, etc.? (if not, what did you do to fill this gap?)

#### MrOwnership

I was well aware of these concepts when I first started playing around with the emulator and toolkit features. I was first introduced to these in high school computer classes and then went on to get a degree in Computer Engineering. So I had been working with these concepts for years before even considering achievement development. My work in the Wii scene, school work, and my professional career had me prepared about as much as I could have been going into achievement development. Really the only thing left to learn was the toolkit features.


#### meleu

> I'm noticing an interesting thing... Our previous interviewee, [Salsa](/issues/2021-09/raspotlight), also mentioned that she learned these concepts in high school. And now you're saying the same. She's from Poland and you're from the U.S. In my part of the world, Brazil, it's not common to see this subject in high school (unfortunately).
>
> I'd like to explore this Wii hacking background a bit more. Could you tell us a bit abou of tools you used for that? For example which tool you used for RAM digging? Where did you guys were sharing your findings? Which kind of software artifact you guys were creating (was it a patch to be applied to a ROM)?


#### MrOwnership

RAM digging on the Wii was well defined before I even got interested in it. RAM digging on the Wii had to be done on the hardware, we didn't have a way to RAM dig via emulator. Security on the Wii was abysmal, you could get a new Wii up and running with homebrew applications in less than 10 minutes. To go along with that, Nintendo for some reason allowed direct access to the Wii's RAM via the GameCube memory card slot. A device called USB Gecko was created to take advantage of this hardware oversight. This device looked just like a GameCube memory card but with a USB port on the outside. This allowed us to connect a computer to the Wii via USB and read the RAM directly. USB Geckos were not easy to find, they were produced in limited quantity and would be bought up very quickly as soon as word got out that they were available. Somehow I managed to get one for market price, which at the time was about $35. I actually still have mine, it hasn't got any use in about 10 years but still pretty cool.

![image](https://user-images.githubusercontent.com/16140035/135932926-8c7a336c-9596-4d9c-8c3d-94c7a0bdfdb2.png)

We had two options for computer programs to actually do the RAM digging, WiiRD GUI and Gecko.net (shown below). At it's core, RAM digging is pretty much the same then as it is now. We were essentially just trying to find the addresses that go along with the cheat codes we were trying to create. We had options to search certain address ranges, values, sizes, set breakpoints, find pointers, etc.

![image](https://user-images.githubusercontent.com/16140035/135931874-97f2e9ed-7ce7-4b94-bae0-acdce97e6c1d.png)

A simple cheat code for 9999 kills could look like `04A20B10 3800270F`, where you have an address/value pair. More complex codes would have dozens of lines of address value pairs. Cheat codes were posted online in various forums, geckocodes.org was really the father of storing all the codes and the proper credit to go along with them. For the most part I was just poking around in the memory for fun I never really submitted any codes. Launching a game with cheat codes enabled was a simple as putting the codes into a text file in a specific folder on an SD card and launching the Wii game through the GeckoOS homebrew application.

The other side of my Wii hacking experience was with Call of Duty mod menus and custom gametypes. This was one level higher than cheat code created as we were not dealing with RAM, but rather a C based programming language. We had a way to extract the existing gametype source files from the Wii ISO image, modify it with our custom code, put it back onto the Wii ISO image, and then boot up the game using one of many different homebrew applications to launch a game from a SD card. It eventually got to a point where you could just run the custom gametype from a mod menu rather than having to replace an existing gametype. Sharing custom gametypes was just a matter of posting the code and how to get it installed into the ISO. Installed a custom gametype was a little more involved than enabling cheat codes as it required the user to have a digital copy of the game and a few programs to get the custom code onto the digital version, but once you knew were familiar with the process it only took about 15 minutes.


#### meleu

> Going back to the achievement creation topic. Checking [the games you had worked on](https://retroachievements.org/gameList.php?d=MrOwnership), I couldn't help but notice that, just like me, you also like homebrews. Could you tell us what is your motivation to work on homebrew games? Are you (or have you ever been) involved in a homebrew scene?

#### MrOwnership

My motivation for working on homebrew sets isn't much different from any other set. Most importantly I'm looking for a game that I enjoy playing. If I don't enjoy the game then I'm not going to enjoy spending hours RAM digging and creating achievements for it. There are a lot of homebrew games out there that do not have a lot of content, so I'm looking for games that offer unique or interesting gameplay mechanics. One nice thing about homebrew games is that very few RA users, if any, have even played the game, so being able to introduce users of a retro community to a brand new game is a nice bonus. Given that, it's important that I make a good quality set that leaves the user satisfied after playing through the game, regardless of if they decide to master the set or not. With homebrew games there is always a chance of some sort of interaction from the original developers. For example my set for [Micro Mages](https://retroachievements.org/game/14336) got a tweet from [Morphcat](http://morphcat.de/) and while working on my set for [The Curse of Illmoore Bay](https://retroachievements.org/game/5452) I joined the [Second Dimension](https://www.second-dimension.com/) Discord to get set and badge feedback from the game developers over there. I'm always keeping on eye out on Kickstarter as well as few other sites for new or upcoming homebrew releases.

I have never been involved with any homebrew scenes. It would be interesting to look into using GB Studio, or similar applications, and create my own homebrew game and set to go along with it. It's something I'm certainly capable of doing, I just lack the time to do it.


#### meleu

> What I like in homebrews is that the people creating those games are really passionate about what they do. And I'm frequently surprised about some gems that appear from time to time. It's awesome to see what people are able to create for pure love with little to no financial incentive.
> 
> Regarding achievement creation, in a previous issue of RANews I shared [my process of researching a game](https://news.retroachievements.org/issues/2021-06/devtip) in order to have ideas for achievements.
> 
> I think this is an interesting thing to share with the community. As it can make "non-devs" learn how to do this research and post their ideas on the forums. Hopefully an achievement creators can pick those ideas and implement them.
> 
> Please, tell us a bit more about your achievement creation process. I'm specifically interested in the design process. The preliminary work.

#### MrOwnership

My achievement process can be broken down into a few different sections:

* **Research**: I like to know virtually everything there is to know about the game I am working on. I will lookup guides on multiple websites, cheat codes, speed run videos, original manual, basically whatever I can find to learn as much about the game as possible. You never know what you can find that will spark an interesting idea for an achievement. This stage is typically ongoing throughout the entire achievement creation process.

* **Initial Playthrough & RAM Digging**: During my first playthrough of the game I will make code notes for as much as I can, regardless of if I intend to use it in the achievement logic. I'm looking for menu selection and option values, cheat flags, screen ID's, level ID's, enemy and player information (health, x/y coordinates, sprite IDs, etc.), item information (counters, item flags, etc.), level completion flags, invincibility timers, the list goes on and on. Putting as much information into the code note is a great practice, `Player Health` is not very descriptive. I try to put the address size, max health, what the value goes to on death, does the value go to something unexpected on other screens (0xFF on a continue screen for example). It's enough information where I don't have to worry about any unusual behavior from the address when working on the achievement logic. During the initial playthrough I also make a bunch of save states of notable events, such as the beginning and ending of stages, pre boss fights, in game events, etc. You can save a lot of time by creating and properly labeling save states. Finally during my initial playthrough I am taking notes in a Google Sheets on the specifics of each stages (can I go deathless, enemy count, can I kill all enemies, can I kill no enemies, can I complete it in some unique way, dose it have a unique gimmick, etc.), basically anything that can be used for potential achievement ideas. 

* **Achievement Design:** I'm trying to make an achievement set that is unique to the game as well as difficult enough where the player is left both relieved and satisfied after mastering the set. I typically want my sets to have a wide range of achievement types so I'll have progression, point based, time trial, and some challenge based achievements. I'll start off with some progression based achievements that are awarded for completing levels, defeating bosses, and picking up key in game items. Simply completing the game will generally award all of these achievements. Nothing special here, every game as them. Depending on the game I may add in achievements for getting a certain number of points or score on individual levels to total throughout the game. Lately I've been putting these into leaderboards rather than achievements. Similar situation with time trial achievements, if the game tracks time then it's easier to work with as the user can see how close they are to getting the achievements. I try to put these into leaderboards as well. Challenge based achievements is where all the fun is. This is the part where I can get as creative as I want to offer unique and difficult achievements for the user. The majority of my design time is spent here and really what lets the set shine as a whole. I'm looking to utilize any unique gimmicks or gameplay mechanics that the game offers to create fun and challenging achievements. A lot of these ideas come from asking myself "can I do that?". Can I beat the level using a default weapon, colleting all items, killing all enemies in a specific way, whatever questions I can think of during my playthroughs. Some of my favorite achievements were the ones I recently did for my [Rocket Knight Adventures](https://retroachievements.org/game/34) revisions, while not terribly difficult they were really fun to create and earn.

* **Achievement Creation & Testing:** At this point I ready to start coding the achievements, leaderboards, and Rich Presence. I've been using RATools for my past several sets so I'll start by creating several helper functions for various events. This could include level completion, taking damage, dying, entering a boss fight, defeating a boss, and so on. From there I'll organize the necessary data into arrays and dictionaries so it's organized and can be pulled into the achievement logic when necessary. I'll create templates for similar type achievements (complete level X, defeat boss Y) and get those created and tested first. After that I'll move on to the next set of achievements, there is really nothing fancy about my process here. I typically know exactly what logic I need to add into each achievement before even starting to work on them. So I will make them in batches, test them, and update and retest them if necessary. I'll look over my logic in the achievement inspector to make sure I'm following the best practices and then I move onto creating the badges. I spend a good amount of time on my badges making them look visually appealing while also relating to the achievements they are used for.

* **Final Testing:** At this point my achievement set is final, all the logic is complete, badges are done, leaderboards and Rich Presence are done. I am just verifying that everything triggers when it should. Final testing consists of at least 1 more full playthrough of the game, depending on the game length. I'll play the game in softcore mode so I can still see the achievement logic information but I will not use save states in this phase. It's important to play the game in a way that you typically wouldn't, which is easier said then done. I've already verified that everything works when the game is played my way. I'm trying to play the game in a way that someone else will to see if the memory behaves any different then what I'm expecting. I'll test out different option settings, difficulties, taking damage on purpose, dying on purpose, not picking up certain items, not killing certain enemies, etc. I request a playtest from the Discord playtesters as well, who better to test my set than other users. If they can find mistakes before the set goes then great. When I'm confident that my set is ready I'll promote and let the community enjoy it.

Being a code reviewer also plays an important role in my creation process. I've seen enough logic errors, design flaws, and triggering issues from the jr. devs that I can look at my own set with the mindset of a code reviewer and fix most mistakes before the set goes live. On the other side I've also seen some really cool achievement ideas that can be inspiration for some of my future sets.

#### meleu

> I hope it can be an encouragement for more Code Reviewers volunteers. :)
> If I'm not mistaken we're currently with many jr-devs waiting to have their code reviewed and more volunteers in this front would surely help.
>
> Now let's move on from this nerdy talk for a while and talk more about yourself.
> 
> Please tell us what's your connection with the character Super Macho Man you use as your avatar? Is Punch-Out (NES) a game from your childhood or was it a random image you picked by chance?

#### MrOwnership

Punch-Out was one of my favorite NES games growing up, although I never had much time to play it. I never owned a NES so the only time I got to play was when I went over to my grandparents house, which was only a few times a year. Punch-Out was always my go to game when I got the chance to play it. It wasn't until several years later when I could play it whenever that I was actually able to beat Tyson. I'm not exactly sure why I picked Super Macho Man as my avatar, probably because his bouncing pecs always made me laugh after he knocked Little Mac down.


#### meleu

> I also like to address the cultural background of the interviewee, in a hope that the readers can find something interesting that is not necessarily related to videogames.
> 
> That being said, please, tell us what is/are your favorite movie(s) and why?

#### MrOwnership

I can't just pick one, way to many great movies out there so I'll list a couple. If I'm flipping through channels and see any of these movies playing, I'm more than likely going to watch them.

- **The Thing (1982)**: Fantastic horror movie, highly recommend it to anyone who has not seen it. The movie follows a research team in Antarctica that gets hunted down by a shape-shifting alien that can take the form of whatever it kills. The atmosphere of being stuck in a research post in Antarctica really forces a kill or be killed situation that is very entertaining to way and see how it plays out.  Worth watching the 2011 version as well afterwards.

- **The Mummy (1999)**: I've probably seen this movie over 100 times and it never gets old. This movie as everything; action, adventure, horror, comedy, romance, gun fights, explosions, treasure, Imhotep sucking the life out of his victims. Overall it's just a very entertaining movie to watch for everyone, if you have not seen it yet then what are you waiting for.

- **The Prestige (2006)**: Great mystery movie about two magicians (Hugh Jackman and Christian Bale) battling it out to to create the best illusion while sacrificing everything they have to do so. It has a really interesting plot twist that makes you rethink everything you just watched. This is a movie that you need to watch more than once to understand the whole plot.


#### meleu

> What is your favorite kind of music? Can you suggest something?

#### MrOwnership

I mostly listen classic rock from the 70's-80's. Some stuff from the 90's but I think most music that has come out within the past 20 years is terrible. Some of my favorite classic rock bands are Guns N' Roses, Queen, Boston, Van Halen, AC/DC, and Led Zeppelin. Anything from them or similar bands would be my recommendation.



#### meleu

> What is one thing you haven’t accomplished in life you are still aiming for?

#### MrOwnership

I don't really have an answer for you here. My main goal in life is just to maintain my current lifestyle. Spend a lot of time with my family members and relatives, stay healthy both in mind and body, continue to move forward in my professional career, and overall just be the best that I can be. There is not much more that I can ask for.

#### meleu

> Thanks for your time and for sharing a little about yourself with us. Finally, would you like to leave a message for our readers?

#### MrOwnership

No problem, thank you for having me. I've been a part of the RetroAchievements community for almost 3 years now and it has grown so much since I initially joined. When I first joined the discord, being a developer was one of the few ways to contribute to RA, now we have several teams dedicated to various contributions such as set quality, site cleanup, and hash organization to name a few. If you have questions, concerns, recommendations, looking to get more involved in development, RANews, site cleanup, whatever it may be, please reach out. It doesn't matter if you can only offer a hour a week or 20 hours a week, every little bit helps and pushes the community to be the best that it can be. Thank you to everyone who helps to make RetroAchievements our home.

