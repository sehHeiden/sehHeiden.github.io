---

title: On Vibe Coding, Part II
author: SeHe
type: reference
date: 2025-07-28
tags: ["vibe coding", "Zed", "OpenCode", "OpenRouter", "Claude", "ClaudeCode", "GLM"]
categories: "Vibe Coding"
draft: false
comments: true
---

A lot has happened since, my last update on Vibe Coding, part II.
Since, then I switched from PyCharm to Zed.
Never looked back.
Pycharm is best for simple debugging, but I mostly do it now with LLM.
Zed is faster and does not take so long to load as Pycharm.
The language server though are somethimes a bit unstable.

The LLM tooling in Zed is more powerful, than anything I used before.
Still, its very important to set some very strict rules for the LLM.
Like not to delete (without permission), not committing to anything without permission, and not making any changes without permission.
With those guard rails in place, it protects for the most problems.

Still two, problems stay important: costs of tokens and quality of the generated code.
I also tried OpenRouter integration, which offers some additional cheaper models for simpler tasks!
I tried the OpenCode Agent in Zed and the ClaudeCode Agent in Zed.

In the end I came up with using Pro Tier of Claude.
That partially solves the cost problem.
Although with Opus 4.5 its often limiting.
As the Limits per 5 hours is too low to vibe code a single task.

My current prefered tool at the time is OpenCode in the Terminal.
I has code shortcuts and works much better then the integration into Zed.
Also using the Terminal (with Tmux) is much more flexible.
With OpenCode I can ClaudeCode with Pro Subscription and OpenRouter integration and more APIs at the same time.
The model can flexibly be swichted with a short cut.
I has a good workaround for the Limits per 5 hours.
It has a timer and automatically restarts the next prompt after the time is up.
An alternative is to switch the model and use that for the time.
But in the end when the editor codes at night, without me, who cares.
As it would run anyway for compute.
I nice workaround for the Limits per 5 hours is to start early.
Like just before eating, getting up with the first prompt.
Then do something else, and when the has come to get the real work done.
This delay between first prompt for the task to the real work is done adds to the time working on the project.
When the limits is now reached, the time to wait has reduced to one, or two hours, or less.

Both OpenCode and ClaudeCode have good guardrails intergrated themself.
They never created such huge problem as the Zed Agent without the Guardrails.

Opus 4.5 is strong, especially when used with ClaudeCode.
But it solves not every problem.

My experience is Code that needs to have an idea what the code does in two dimensions.
Just does not work.
Might it be a combination of unions and intersections of areas, drawing lines.
The first does profit from writing code yourself.
The second does profit from manual changes.
Problems are still to long Code, even with prompting for Code reuse, DRY and YAGNI and parametric tests.
But the ratio has gotten better.
In the end the code generation still needs reprompting.
Formatter, Linter, Type Checker and tests help.
Also, LLMs become better at fixing these problems, or not creating them.
Often Pyhton code looks very generatic.
For example loops are often used over Comprehensions, creating to much code.
Other problems still is Copy over Reuse(got better, still exists)!
Fixing Problems at the wrong position, which fixes the bug.
But its a bug fix at the symptom not the cause, generates Code that is hard to read, mentain and is to long.
