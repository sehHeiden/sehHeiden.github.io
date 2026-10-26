---

title: Doublelling Tokens per Seconds  of Qwen 3.6 35B-A3B on low end graphic card on nixOS
author: SeHe
type: reference
date: 2026-10-26
tags: ["nixOS", "LLM", "Qwen 3.6 35B-A3B", "Qwen 3.6 35B-A3B"]
categories: "LLM"
draft: false
comments: true
---

The graphic card 1660 Ti has aged a bit and only has 6 GB of RAM, does not support half floats or newer floating data types. But when cards were cheaper I could not buy one and now it's to expensive. 
Still I want to try, what is still possible with it. 
And we have to posstive aspects that help,
I) open weight models get better,  even the smaller ones become quite well,  
II) mixture of expert models slowly can not only be split by the layer but also use expert caching. 

There few different engines, in use these features as Kolibri, Strata and new llama.cpp.

I aimed at Qwen 3.6 35B-A3B as best model of that size for the time being.
I used a q4 Model by Unslought and a Q8 KV Cache.
Measurements are done on 30 multilingual math questions. 
The result is similar to multi lingual geographic or history questions.
Multilingual means here: English, French, German.
I first tried Kolibri but only got about 9 to 10 tps, after the cache is hot.
Hower Strata does not work on the pre RTX card.

What works is llama.cpp and it reaches about 20 tps.
There is no expert cache, the model is Splitt a long the layers!
First massiv improvement is to not use the precompiled nixpkgs package, but to add compiler flags for avx2.
Compile time is improved by selecting only the sm75 drivers, which are 16 GTX and 20 RTX cards of NVidea.
That adds an extra 50 %, we thus reach just below 30 tps.

There is no gain in multitoken predictions! 
On newer versions there is also expert caching build in.
But when activated, the model gets slower on the card, because the missed experts are streamed to the graphic card.
The layer whise splits thus has lower transport cost.

There are alternative pr's that do not stream, but leave the missed expert on Ram and CPU.
That results, thus we reach about 34 to 35 tps, on hot caches. 
Interesstingly, this thus enable multi token processing.
Optimum are three predicted tokens.
Thus we reach just below 40 tps. 

We will see we're we are heading. Lately I played a bit with the dense MimiCPM 2B.
So far I can only say, that it's German is much better then the newest GLM by z.ai.
As the model is smaller I use it with Q8!
That way ai can run the whole model on the graphics card,  but I set the KV cache to Q8 but on system ram.
That way I reach 70 tps.
It's slower than smaller KV Cache in the graphic card.
The cache is ruther large compared to the qwen model.
Thus MiniCPM probably uses more classical attention layers. 
