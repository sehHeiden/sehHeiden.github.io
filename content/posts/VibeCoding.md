---
title: On Vibe Coding
author: SeHe
type: reference
date: 2025-07-17
tags: ["Vibe Coding", "Programming", "Warp", "Warp Terminal", "Terminal"]
categories: "Vibe Coding"
draft: false
comments: true
---

Before testing Vibe Coding, I used chat interfaces to generate code for over a year.
Therefore, the code snippets were much smaller, with one function at a time. You can also ask ChatGPT to automatically test the code.
At least, it does so from time to time.
Nevertheless, the results are mixed.
Time savings were minimal.
Especially when the code didn't work, and I had to write it by hand anyway.
That does happen, but not always.
However, since the best-case benefits were not significant, this reduces the overall benefits.
Only once did I get a result that was beyond my capabilities.
It reduced the code size by a factor of two and made it more readable.
These possibilities were not well documented.
The fact that the LLM read a lot of real code helped.

Then, I tried Vibe Coding first in PyCharm and then in the Warp terminal.
To make it quick. PyCharm did not offer real benefits.

Now, on to Warp Terminal.
It's helpful when you're not sure what the command you're looking for is called.
The free version should suffice for that purpose.
It can also do live coding.
It can generate code structure and code for your given purpose.
However, it's far from perfect.
How well does it work when it's not what the client wants?
What if it doesn't fully do what the client wants?
What about when it copies code/functionality instead of reusing or generalizing it?

It gets things done. Sometimes, or rather, eventually, it works, but how much time and effort does it take?
I don't feel like it's a net positive.
I read an article last week about larger and older code bases.
The developers thought this would save 20%, but they were 20% slower.
Therefore, they were tricked into feeling 50% more performant than they were.
I had a similar feeling here, even though this code base was new.
I assume that Warp Terminal is not optimal for this use case.

However, it excels at helping solve problems.
For example, it can help solve linter errors, type-checking errors, and failing tests.
This works quite well because the tool identifies the position and cause of current problems.
Sometimes, instead of solving the problem, the configuration of the testing or linting is changed so that this problem is no longer included.
Sometimes that might be the right way, but I've encountered this less often.
But this really helps.

In the end, keep an eye on what is changed.
I don't change anything that is different from what I wanted.
Otherwise, I would have lost my mind.
I tried to correct it later on.

What experiences have you encountered so far?
Which tools did you try?