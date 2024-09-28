---
title: LDA and WordCloud on Mastodon Posts for the Bavarian State Election!
author: SeHe
type: reference
date: 2024-05-04
topics: [Python NLP LDA]
showMiniToc: true
---


We selected a party as the dominant party, when this party or its
candidate was mentioned 50 % or more compared to other parties. But this
results in many posts that mention the candidates Söder, Aiwanger,
although the post is attribute to different parties. This mixed
attribution, which allows to mention different parties as long as there
is a clear dominant party, makes attribution hard, but was used to keep
as many posts as possible. Even though in some weeks we did not record
post for some smaller \"dominant\" parties.

In addition, the state election in Hessia, was held on the same day,
which also mentioned in some posts.

We use the German StopWords from NLTK. Also use the German StopWords form Spacy.

# Word Cloud after Lemmatize

Lemmatize with Spacy (<https://spacy.io/models/de>). Spacy uses models
small to large and a BERT based model. We use *large*. NLTK WORDNET does not work with the German
language.

The Wordcloud shows, that the candidate Hubert Aiwanger and Markus Söder
were most important, as their parties Freie Wähler, CDU/CSU (Union) and
the party AFD.

In addition, the words Nazi and Antisemitismus were frequently used.
Also, the name of the state `Bayern` was very frequent. But we had a
regional filter criteria, so that the post had to name the state name,
or that of any other local entity at any local government level or
candidate name.

# WordClouds for each Party

The word cloud of each party can be selected with the drop box.

|party                 |   support  |               noteworthy frequent terms|
|----------------------|-----------:|----------------------------------------|
|AFD                   |        609 | `rechtsextrem`		                 |
|CSU                   |       1570 | `Söder`                                |
|FDP                   |         94 | `Ampel`, `fliegen` and `grün`          |
|Freie Wähler          |       2015 |`Hubert Aiwanger`                       |
|Bündnis 90/Die Grünen |         54 | `Hartmann`, `Grün`, `Bayern`, `Frau`   |
|SPD                   |        192 | `Bayern`, `Hessen`, `Israel`           |
|Die Linke             |         69 | `dropbox`, `ordner` and `icloud drive` |
  ------------------------------------------------------------------------

CSU and Freie Wähler posts mention their candidates very often. These
posts attributed to other parties are more diverse. The posts attributed
to `Die Linke` mention exchange directories. FDP posts seam to be more
about the national government (`Ampel`). The few posts about the part
`Die Grüne` are the only ones to mention the term Frau (woman) often!

Filtering out by computing the mean(for groups of topic, week and
party).

    Get the most important words of a given model.

    There are to many topics with the same most important word therefore we use two.
    We show them in Alphabetical order.

```
    {0: 'aiwanger bayern',
     1: 'afd aiwanger',
     2: 'afd aiwanger',
     3: 'aiwanger söder',
     4: 'aiwanger csu',
     5: 'aiwanger csu',
     6: 'afd bayern',
     7: 'aiwanger csu',
     8: 'aiwanger csu',
     9: 'aiwanger söder'}

```
 value_counts:
```
    important_words
    aiwanger csu       1966
    aiwanger söder      954
    afd aiwanger        657
    aiwanger bayern     548
    afd bayern          478
``` 
# LDA

Seeing the phi_k correlation measure, there is a medium correlation
between dominant party and topic. Which makes sense, the party names and
their candidate names are contained in the most important terms for some
topics! The sentiment seam to be weakly or not correlated.

The word cloud of the original data, shows how import it is to remove
stop words, as the most frequent terms as connotations and article do
not have any meaning.

# LDA - Topics

The actual topic index, may change a possible, tested result is for 15
topics: Some Topics form cluster. The main cluster consists of the
topics 1-6, 8, 10, 12 (Bavaria, CSU, Söder, AFD). A smaller cluster is 7
& 9 (CSU).

The weighting factor λ is applied to rank the terms. λ = 1, means
ranking of terms in decreasing order of their *topic*-specific
probability and λ = 0 ranking by lift (term probability within a topic
over its marginal probability across the corpus). Meaning, λ = 1 favours
total probability with the corpus and λ = 0 favours the probability with
the current text (see
<https://nlp.stanford.edu/events/illvi2014/papers/sievert-illvi2014.pdf>).

The clusters 11 (Freie Wähler, CSU), 13 (Söder, Bayern, AFD), 14 (Söder,
Bayern) and 15 (Bayern) are isolated. The most import terms are:


|  Topic |    Percentage | λ = 0                    |    λ = 0.5    |      λ = 1    |
| ------:|---------------|--------------------------|---------------|---------------|
|  1     |           9.8 | Nazi, Augsburg           | CSU           | CSU           |
|  2     |           8.9 | 1, 25                    | Söder, CSU    | Söder, CSU    |
|  3     |           7.8 | Prozent                  | AFD, Bayern   | AFD, Bayern   |
|  4     |           7.7 | Hessen, Wählen (elect)   | Söder, Bayern | Söder, Bayern |
|  6     |           7.1 | ltbwby23                 | CSU, Bayern   | CSU, Bayern   |
|  7     |           7.0 | werfen (through)         | CSU, Söder    | CSU, Söder    |                       
|  9     |           6.4 | DE, Fakt (fact)          | CSU           | CSU, CDU      |
|  10    |           5.8 | Welt (world), Opfer (victim) | Hubert, Söder |   Hubert, Söder |
|  11    |           5.5 | Freie Wähler                 |Freie Wähler,  Hubert, CSU, Söder  | Freie Wähler,CSU, Hubert, Söder |
|  12    |           5.2 | Hartmann                     |CSU, Bayern, AFD | CSU, Bayern, AFD|
|  13    |           5.0 | wissen (know, knowledge)     |Söder, Bayern,   |Söder, Bayern |
|  14    |           4.9 | Hubsi (nickname of Hubert Aiwanger), Augsburg |   Söder, Augsburg, Söder, Bayern | Bayern |
| 15    |            4.7 |2, FDP                       | Bayern           |Bayern |

I removed the tpoics with to many/long terms.

# LDA for each party (with up to 15 topics)

When several topics are attributed to a document. How strong the
attribution is given by a ratio. The sum of these ratios per document
is 1. We attribute each document with its strongest associated topic.
Therefore, some topics are not included in the main_topics series.

Computation of the LDA for the party `Die Linke` does not work. Many
(most) topics share the same most important term.

Because my topics share the same most important word, we use the two
most import words (in alphabetical order). This increases the number of
topics with unique most import words, while the most import words stay
distinguishable.

Interesting most important words are:

-   CSU: (braun, Söder), (frage, mehrere)
-   FDP: (dienen, Söder), (Bundesregierung, dienen)
-   Freie Wähler: (koalition, nazi)
-   SPD: (dienen, Söder), (Aiwanger, Kampagne), (Aiwanger, jung)

As these terms are a good summary of the most important discussions. As
minister Aiwanger did have a Nazi pamphlet in his school bag when he was
young. Prime minister Söder did have several questions, about that, that
ha to be answered.

# Conclusion

Contrary to our hopes, there is no correlation between the topics and
the sentiment. This might be caused, by the fact that topics are very
similar, or that we attribute posts to a party by its dominant party.