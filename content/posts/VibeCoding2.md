---
title: On Vibe Coding, Part II
author: SeHe
type: reference
date: 2025-07-28
tags: ["Vibe Coding", "Programming", "Warp", "Warp Terminal", "Terminal"]
categories: "Vibe Coding"
draft: true
comments: true
---

In the first part I talked about, vibe coding being better with tool usage.
Than accutual writing code.
Also to always correct the output is somewhat hard from a terminal, not being a full editor.
Much background is not shown and, you probably cannot know it in the first place, for vibe coding.

But there is a tool for doing just that: Testing/TDD.
Instead of always inform the LLM about a task for ever and ever I let it write some tests first.
That do the correcting  step for me.
But is the tool good egnough to write tests that a) are correct, inform the network about the task?
Will the resulting bug fixes, that the LLM than writes, be accacutally good?
Will we be faster now?

Due to the additional indirection, you see even less code and are even more rely on the LLM not halucinating.

# What would I stil do with LLM

1. Tool usage: debugging with linter and type checker
2. Documentation
3. Partially checking the documentations of used libraries when not sure, what to look for.
4. Get ideas how to solve things, I am not so familiar with yet. Than check these manually for problem and loop holes.
5. Rewrite code to other code stiles, without changing what the code accuataly does.


