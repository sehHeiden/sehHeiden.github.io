---
title: Commandline tools for Windows and Linux
author: SeHe
type: reference
date: 2024-10-19
tags: ["terminal", "commandline", "win", "unix"]
categories: "terminal"
draft: true
comments: true
---

Imagine you want to try new commandline tools, but you have both unix and windows machines. 
Perhaps you use Linux at home and Windows at work, or you still have that on gaming computer with Windows.
At the same time, you want to have unifined tooling in the commandline.
 
With the rust programming language a bunch of new commandline tools have been developed over the past few years.[^1] 

[^1]: Yeah, there are also tools written in other languages as Python.

I want to have a first look at tools that can be install on Linux and Windows at the same time. For Windows I use package manager

1. winget, and
2. scoop.

For Windows users, these are programs to install und **update** programs. You definetly want to try winget as It can update some of your programs, that you did not install with it.
With 
```powershell
winget update

winget upgrade --all
```
you can update you programs, without looking for updates on the web.

I want to try tools in general, terminal editors (micro and helix) and terminal file managers (yazi) and figure out how good I get them working on Linux (TuxedoOS) and Windows 10.
I use some of these tools for a while, while use are new to me.

# Fastfetch

Which is the first tool any installs? Neofetch! (Or fastfetch as Neofetch is not supported anymore).  The tool looks good, does it job very well., to show us the core data of your machines. A bit of riching and anyone knows you are a qualified nerd.
You have a terminal and know to do (some) things. While the usability is low, the coolness factor is high.
on ubuntu added ppa.

*Win:* good
*Linux:* good

# bottom

Bottom is system monitor, works similar to (h)top, it starts with `btm`. Its in color and is clickable (to select the CPU for monitoring). 
Its good, but on linux I prefer bpytop. It"s not listed here due to problems on windows.

*Win:* okay
*Linux:* okay

# Btop

Btop is similar to bpytop, but can be install on windows with scoop.
You can either install the default version or btop-lhm with gpu support, but this needs admin rights during instll and starts in a new window. 
Thats why I select the default version.
If you ask me, I use btop, it has options, theming, filtering.

*Win:* good
*Linux:* good

# The fuck

Fuck is perhaps not the four letter word Joan Baez would thing about. But this tool has a great idea.

# Hyperfine


# lazydocker

I do not really know, why you would like to install lazy docker on Windows as you have docker desktop. 
But anywhere else its nice to have a minimal version for the termimal, that looks like docker desktop and top of docker.
It works. 
needed go version not in apt.

# yazi

on ubuntu get, compile and install with cargo.

Yazi is a file manager like ranger or nnn.
I has it own package manager. Theming works on windows. But on windows can not get opening and preview working.
Like `ranger .` the quick start package shows you how to change the current working directory when closing.

*Win:* meh
*Linux:* good? test pluginms? themes..

# midnight commander

Can be installed by winget as `GNU.MidnightCommander`. But does not start as a terminal program. But still I like it more than yazi. Does not close in new dir. Does not open in default program and has no preview.

*Win:* meh
*Linux:* ???

# Micro

What is larger than nano? Its micro. Well you can config nano, but most don't. Micro tries to find a sweet spot between nano (easy - shows main commands) and vim (modal - shows nothing). It does not waist as many lines of youer terminal space. 
Just one for the hot keys for help and config. Its higjly configerable. Uses the mouse.

*Win:* okay
*Linux:* ???

# Helix

???

*Win:* ???
*Linux:* ???

# Emacs

Similar to MidnightCommander it can be installed as `GNU.Emacs` and it does not start from the terminal, but from the start menu.


# nushell

on ubuntu get, compile and install with cargo.

On Windows unable to activate python virtualenv. 

*Win:* ???
*Linux:* ???

# eza

???

*Win:* ???
*Linux:* ???

ls -> exa -> eza .
