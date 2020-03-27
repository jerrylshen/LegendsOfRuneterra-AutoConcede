# USE AT YOUR RISK
# Legends Of Runeterra Auto Concede AI Script
If you like this, please give my repo a star:)

## What It Does
This should work on all display resolutions, as long as LoR is fullscreened.
The order of sequence it clicks on:
Play -> VS AI -> picks the first deck -> \*Play -> Passes two turns -> Setting -> Surrender -> Ok
\*This to the end of the sequence loops 10 times, [why only 10 times?](https://github.com/jerrylshen/LegendsOfRuneterra-AutoConcede/blob/master/README.md#why-auto-concede-against-ai-10-times)  
Total XP gain: 350

## Prerequisites
Download AHK: https://www.autohotkey.com/  
Save LoRAutoConcede.ahk and RandomBezier.ahk in same folder/directory  
[optional] An editor, if you want to edit the code

## How to Use
After running LoRAutoConcede.ahk:  
To start: CRL + j  
To end at any time: ESC  

## Technical
For finding the coordinates of where to click, instead of hard coding exact coordinates of display resolutions, I'm calculating based on location's ratio to the display. This should make the script "universal."  

It's using [MasterFocus's RandomBezier.ahk](https://github.com/MasterFocus/AutoHotkey/tree/master/Functions/RandomBezier) to randomize/simulate a more natural mouse movement from Point A to Point B with different duration of mouse movement for each action.  

I've also added delays to allow for the loading times. Please refer to the comments in the code if you find the delays too long/short.  
Loading times would vary based on specs.  
This script was tested on a 2016 Dell XPS 15 9550.

## Why auto concede against AI 10 times?
From Riot (https://playruneterra.com/en-us/news/open-beta-economy-updates/)  
Vs AI Losses  
- Base XP reward is 50 XP.
- Losses 5-10 reward 25 XP.
- Losses 11+ reward 0 XP.
