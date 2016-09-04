---
layout: post
title: "Always Be Ready to Ship"
date: 2015-04-01T22:23:30-04:00
modified:
categories: development
excerpt: "Sometimes forces outside of our own team prevent us from being able to work the way we think is best, so instead of \"Always Be Shipping\", we should just \"Always Be Ready to Ship\"."
tags: [principles, developer, shipping, continuous-deployment]
---

In recent years there is a big push towards the principle ["Always Be Shipping"](http://blog.codinghorror.com/yes-but-what-have-you-done/). When most people think about shipping, they think about releasing things to the public, however some alternative interpretations of the principle include beta applications, internal demos, and even updating common libraries that teams may share.

It is always a big deal to release code, so reducing the effort to ship makes it possible to follow this principle. Unfortunately different applications have different levels of pain for shipping built into their process. For example web applications are deployed and instantly received by the customers, where as mobile and desktop applications need to be downloaded by the customer before they can start using. Just to be clear, many web applications, like Facebook, Twitter, and Github aren't just "simply" deployed, they require updating numerous servers at the same time. However, getting the desktop and mobile applications often have to go through the process of review from Apple, Google or Microsoft, that can take upwards of two weeks to get past.

On top of the technical roadblocks around shipping, there are also quite a few other roadblocks that can prevent your project from shipping. Most teams have policies revolving around the testing of the apps before being shipped. As most developers know, the longer you make changes the more possibilities of breaking the app can be. So if you speed up the time to ship, the number of changes goes down, however if the time to test a release takes a significant amount of time, you won't be able to ship the app quickly. One solution to this problem are automated tests that can be ran before any release verifying that nothing has broken. Sometimes teams will stop development while waiting to get the final go for a release, but if you continue the development the time to release for the next release is even shorter.

One concept from many years of business that is hard to get by, is the desire to have large marketing events around releases. These added (sometimes external) dependencies and deadlines can make it hard for any project to ship on a whim, because management might get the impression that releasing can't be done without marketing. Unfortunately this is a much harder problem to solve, but one approach some teams have taken is to ship code that is deactivated until some event where they will be turned on. This allows teams to constantly be able to ship with all the code, but still be able to hold off on some features until the promotions are ready.

As much as "Always Be Shipping" principle applies on projects and teams, it also applies to individuals. It is easy to focus on tangible objects (if software can be considered tangible in this case), but there are other things people can ship, like things we learned during a project. Sometimes personal doubts, company policies, or time can get in the way of sharing something you've made with others, but if we practice shipping and improve the process, we can ship something even better.

Sometimes forces outside of our own team prevent us from being able to work the way we think is best, so instead of "Always Be Shipping", we should just "Always Be Ready to Ship". Being ready to ship, can make other aspects of application management even easier. For example, what if a bug is found in the production application and you can release out the fix but also include a new feature or two. Instead of a negative release, customers can focus on the fact that they got something new.