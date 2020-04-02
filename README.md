# USE AT YOUR OWN RISK
# Legends Of Runeterra Auto Concede Scripts
If you like this, please give my repo a star:) [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/jerrylshen)

## What It Does
This should work on all display resolutions, as long as LoR is fullscreened.  
The order of sequence it clicks on:  
Play -> VS AI (or PvP) -> picks the first deck -> \*Play -> Passes two turns -> Setting -> Surrender -> Ok  
\*This to the end-of-the-sequence loops 10 times; [Why only 10 times?](https://github.com/jerrylshen/LegendsOfRuneterra-AutoConcede/blob/master/README.md#why-auto-concede-against-ai-10-times)  
Daily AI XP gain: 350  
Daily PvP XP gain: ??

## Prerequisites
Download AHK: https://www.autohotkey.com/  
Save LoRAutoConcede_AI.ahk/LoRAutoConcede_PvP.ahk and RandomBezier.ahk in same folder/directory  
[optional] An editor, if you want to edit the code

## How to Use
After running either LoRAutoConcede_.ahk file:  
To start: CRL + j  
To end at any time: ESC  
YouTube Demo/Tutoral/Explanation: https://youtu.be/BXJVsLgzqJA

## Technical
There's no difference between LoRAutoConcede_AI.ahk and LoRAutoConcede_PvP.ahk aside from the mouse clicking on the appropriate "VS Player" and "VS AI" buttons and the set delays.

I've also added delays to allow for the loading times. Loading times would vary based on specs and Internet speeds. If long loading/match finding times, increase delay. 

Lines 49-53 in both files is where one would adjust the delay time to allow for finding/loading the match and the in-match time before conceding:  
> Sleep, 36000  
> Send {Space}  
> Sleep, 20000  
> Send {Space}  
> Sleep, 400  

For finding the coordinates of where to click, instead of hard coding exact coordinates, I'm calculating based on the location's ratio to the display. This should make the script "universal," assuming that LoR scales the same.   

It's using [MasterFocus's RandomBezier.ahk](https://github.com/MasterFocus/AutoHotkey/tree/master/Functions/RandomBezier) to randomize/simulate a more natural mouse movement from Point A to Point B with different duration of mouse movement for each action.  

This script was tested on a 2016 Dell XPS 15 9550 at both 4k and 1080p resolutions, LoR client 0.9.2.  
Please refer to the comments in the code if you want to change anything (delays, adjusting the mouse path, etc).

## Why auto concede against AI 10 times?
From Riot (https://playruneterra.com/en-us/news/open-beta-economy-updates/)  
Vs AI Losses  
- Base XP reward is 50 XP.
- Losses 5-10 reward 25 XP.
- Losses 11+ reward 0 XP.

https://playruneterra.com/en-us/news/adding-more-agency-to-progression/  
PVP wins in Normal / Ranked and Expeditions net you at least 200 and 100 base XP (respectively), every time. Play as much as you want!
