---
layout: post
title: "What Being a Tester Taught Me"
date: 2015-03-16T21:48:54-04:00
modified:
categories: 
excerpt: Being able to test applications is an important quality that all developers should have.
tags: [qa, self, learning]
image:
  teaser: http://vhmalta.com/wp-content/uploads/2013/02/testing.png
---

While I was a undergrad at Michigan State, I had the opportunity to work as a Quality Assurance intern at a local software company.  Originally I was looking for any kind of internship for the upcoming summer, but I ended up finding a job that I could work alongside my schooling.  Although I let the [Imposter Syndrome](http://en.wikipedia.org/wiki/Impostor_syndrome) tell me that this was the only kind of job I deserved, I did learn some really key lessons that have been crucial in my career.

## Proximity is better than always connected

In the first few months of working as a QA, I was secluded with the rest of the QA separated by an entire building from the team I was working with.  Communication was done over email and IMs, but rarely in person.  I found myself having so many questions, some so hard to write down that I just didn't ask.  Sometimes I had to ask a developer to come to my desk, because I could not take my desktop computer to them to show them the problem.

Thankfully some of the teams shifted around their seats and the QAs were able to sit right across the developers.  As soon as that happened, I was able to increase my productivity and provide even more to the team.  So even though the team was always connected and communicated, it could not compete with learning through just being in the same space.

## Communicate visually and verbosely

![Screenshot](https://addons.cdn.mozilla.net/user-media/previews/full/54/54638.png)

Working as a QA requires significant communication with developers, support staff, project and product managers.  Each person has a different level of technical skills, so everything had to be explained in simple terms.  Additionally it was not guaranteed that they'd see the information at the same time, so it was critical that the communication would be timeless.

One of the easiest tools to use for communicating are screenshots.  Along with annotating the screenshots, there is no questions on what you are actually seeing and there is no loss in translation.  Even though I didn't have the technology back then, today I would default instead to [screencasts](http://en.wikipedia.org/wiki/Screencast) because it is that much easier.

Along with screenshots, it is extremely important for testers to be as verbose as possible.  Any missed steps in the process can mean the difference between the bug being fixed and the bug being shipped to production.  I found the easiest way to guarantee the best instructions, is to repeat the steps before ever sending them out.  Additionally, it is a best practice to follow a consistent format for any issues.  I prefer to use the following format:

> Environment:  
>   OS, Browser version, etc...
> 
> Steps to Reproduce:  
> Step 1  
> Step ...  
> Step N  
> 
> Expected Results:  
> What assertion should be true
> 
> Actual Results:  
> What happened

## Guessing what is in the black box

![Black Box](http://www.aimvalley.com/wp-content/uploads/Icon_SVT.png)

Like most testers, I had no access to the code that I was testing.  I was typically focusing on the experience of the users and making sure the right outcomes occurred.  Sometimes though those outcomes included verifying the state of a database for another system.  After a while, it became really easy to hypothesize what the developers were actually doing behind the scenes, that I was able to guess where the next breaking point would be in the application.

Often when developing an application, you have to deal with third-party code that you have no control of and no way to know the exact code being used.  Being able to just take an educated guess at what is going on can get you over the hump to finish the feature.

## Think like a non-technical user

![Frustrated User](http://puppetlabs.com/sites/default/files/frustrated_computer_geek.gif)

I have been using computers, browsers and technology since I was seven (twelve years when I was a QA), so when it came time to do testing, I tended to act and work just like I had in my personal life.  However there were several support cases and odd database entries that were flagged that the developers were unable to reproduce.  It wasn't until I told myself to "think like a dumb user" and see what I could do.  

In one particular case it turned out there were two "back" buttons in the application, the browser back button and the application's wizard flow's back button.  With the right (or wrong) combination of buttons, it was possible to get to a point where the user was able to skip a required section of the wizard.  In defence of the user, the user experience was lacking and after seeing how it happened it was easy to understand their actions.  Being able to put aside my prior experiences and assume a persona, was the best practice I learned as a tester.

## Conclusion

The industry has defined separate job roles and descriptions for QA and developers, being able to test applications is an important quality that all developers should have. You should not consider testing features that you have developed as the only testing needed, but you should be able and willing to test your fellow developers work.