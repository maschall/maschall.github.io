---
layout: post
title: "Roman Voting"
date: 2015-06-22T13:39:17-04:00
modified:
categories: development
tags: [meetings, tools]
---

I recently joined a client's team that uses a technique they call Roman Voting to make decisions during meetings. In this technique, when a discussion has been going on for a period of time and a decision is needed, someone will call a vote. The person calling the vote will describe what the options are and how to vote for them. In a typical use case, the options are thumbs up for one option, thumbs down for the other, and sideways for abstaining. Occasionally there may be more than two options, so just using a one to x fingers option can be used.

Along with being able to just get a poll of the situation, the client also implements a policy that when you disagree with the majority of the team, you must be able to explain why you feel that way. After they share their side, if they decide to conceded they can, but also anyone else that is now sold opposite can change sides. It is important to time box the discussions or they may go on longer than necessary.

This simple technique with some rules allows decisions to be made in a team of strong opinions easier than just talking until someone gives in. It also allows those that are quiet during meetings have a say, when it is often the case that the loudest person gets their way.

## Loomio.org

At Detroit Labs we're trying out http://loomio.org/ to help drive decisions across the company, which is much harder than just across the team. It works the same way as the in-person technique, where you start a discussion and than make proposals. Unfortunately it doesn't allow for multiple proposals or the Option A or B format. It is painted as Option A or not Option A which is much different than two options. Overall Loomio is a great tool for remote teams and asynchronous decisions, but I think you lose something from not doing an in-person immediate votes.

## Pull Requests + Roman Voting

I enjoy thinking of crazy combinations of processes that could combine and form a really awesome tool and so I am throwing out the idea that Pull Requests (PR) and Code Reviews could be very interesting with the addition of Roman Voting. 

For the most part this is the way PRs already work for our team. If someone declines the PR or thinks it is not good enough, their vote can stop the decision and cause a conversation. 

However I believe it is ok to abstain from voting from time to time and for that to count as participating but not for or against the change.