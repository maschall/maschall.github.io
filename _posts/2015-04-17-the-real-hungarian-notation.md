---
layout: post
title: "The Real Hungarian Notation"
date: 2015-04-17T16:33:25-04:00
modified:
categories: 
excerpt: Hungarian notation has gotten a bad rap because of a specific implementation, but the principles are still present in today's clean code.
tags: [developer, hungarian-notation, code-styles]
image:
  feature: 
---

[Hungarian notation](https://msdn.microsoft.com/en-us/library/aa260976%28v=vs.60%29.aspx) has gotten a bad rap because of a specific implementation that was spread or forced upon the industry for many years. Even with so much negative publicity, the principles are still present in today's clean code.

## Naming Conventions

One of the hardest problems developers face on a day to day basis, is how to name variables and functions. It's crucial to name these well, because:

* you're going to be using these names over and over
* someone else is going to need to know what that name means
* it needs to be consistent with other variables

Time spent thinking of a name could be better applied to solving the problem. I follow the rule, if you can't think of a name, put down "bob" and come back to it after you have more context.

Naming conventions, like Hungarian notation, provide a set of guidelines that when implemented by the team, will allow developers to create consistent names for variables and functions.

## Hungarian Notation

Dr. Charles Simonyi, one of Microsoft's Chief Architect, introduced a naming convention that prefixed the functional type to the identifier. The original implementations, used very short hand prefixes that made the variables look like they were another language, and soon became called Hungarain notation.

In the paper, Dr. Simonyi used the word "type" to describe a shared common functionality for variables. They are very similar to what we think of classes, but they are not identical. These types are not at the compiler level like we think of classes, they are at a programmer level where things can be gray.

> The point is that "integers" x and y are not of the same type if Position (x,y) is legal but Position (y,x) is nonsensical.

My first thoughts when reading this line, was why didn't they just use a Point class so the confusion is dead, but there is still the problem of how we get the values into Point. If you think of the constructor Point(x, y), it has become so standard that the first value is always x and the second is y, but it's the consistent naming of those paramters that make that so.  

An alternative and full-proof solution would be to have Point() constructor and setX and setY methods on the class.  This keeps everything compiler freindly and explicit, however it is too tedious to use for just creating a simple point.

> rowFirst: row is the type; First is the qualifier

The idea of row and column types, is proof to me that the idea behind Hungarian notation deserves a better reception. While it is likely that these are integers, naming them row and column helps enforce specific rules ```dRow = rowLast - columnFirst``` makes no sense.

## Where It All Went Wrong

As I pointed out above, the term "type" and concept of "class" are often interchanged with one another, so it wasn't long before lazyness kicked in and developers started mixing the two together. Now all strings started with "str" and instead of "un" and "pw" for username and password, it becomes strUsername and strPassword. Prefixing a variable with the an identifier of the class it represents, does technically follow the notation, but it fails to improve the readability of the code.

Before we had IDEs that could think ahead of our typing and suggest names for us, typing long names felt really hard, so "row" became "rw", "string" became "str", "pointer" was shorten to "p". There were so many different mappings of shorthand types, noone wanted to add more to the list and kept it just the same.

## Clean Code

There is a huge push in the community to produce [Clean Code](http://www.amazon.com/gp/product/0132350882/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0132350882&linkCode=as2&tag=marsch-20&linkId=MCI6LG3DXC7WLAKL), and a big emphasis on names. It is stressed that names are self-explanitory rather than having to know a specific charachter mapping of types.

Using the rowFirst example, today most developers would write firstRow, so that it reads the same as if you were just writing a sentence. The Hungarian notation paper, writes that the formula for names is ```< prefix > < base type > < qualifier >```, and we have now changed our names to follow ```< qualifier > < base type > ```.

An example I have seen today is: ```Paint innerCirclePaint = new Paint()```, where the type is placed at the end of the variable name. It is ironic that quite a few developers would prefer this naming, while bashing Hungarian for specifying the type in the prefix.

## One Practice To Bring Back/Keep

In the most typical Hungarian notation implementation, variables that are members of a class are prefixed with the letter "m\_".  Some implementations use "m" or "\_", but they represent the same concept, this value represents the state of the object.

There are so many bugs that I have found in my career that have resulted on the misuse of a field variable or the overuse of state on an object. The worst offenders, on average, are booleans and they are the biggest code smells for me. 

Outside of an IDE, like the code review page for a [Github](http://github.com) Pull Request, it is very hard to see what variable are members and which ones are local. If we went back to prefixing our variables, with "m", "\_", or just "this." ([insert instance reference for your language]), it would improve the process of code reviews and thus maintain great code.

## Conclusion

Readability, consistency and memorability are key properties of great names in code. Naming conventions provide guidlines to team members on how to maintain the same level of great names in our projects. The reason that Hungarian notation was so wide spread (and gets the most flack), is that it was written down so that it could be easily brought into a project and it was an unbiased source of truth for developers.

Dr. Simonyi took a chance and presented what he thought were a good set of rules to follow, and whether or not people followed them because they thought they were great or the company forced it on them, it created code that was consistent not just across the company but across the world.