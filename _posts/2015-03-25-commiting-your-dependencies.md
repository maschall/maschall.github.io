---
layout: post
title: "Commiting Your Dependencies"
date: 2015-03-25T19:18:14-04:00
modified:
categories: 
excerpt: You should be commiting your dependencies into your source control to guarantee that everyone is able to build your project at any time.
tags: [developer, dependencies, sharing-code, principles]
image:
  teaser: dependency-management.jpeg
---

In the past years, dependency managers have spurred a boom to sharing code.  These tools like [gradle](https://www.gradle.org/), [maven](http://maven.apache.org/), [cocoapods](http://cocoapods.org/), [bundler](http://bundler.io/), and [NuGet](https://www.nuget.org/) provide the means for library developers to get their code to application developers.  Prior to these tools, developers would store their pre-compiled libraries on websites that other developers could download and integrate with their code.  Along with downloading the libraries, developers would then check those libraries into their source controls so that everyone on the team had access to these libraries.

Today, developers now define a file in source control that specify what the dependencies of the project are.  Dependency managers then take these files and download the specified libraries and integrates them with the project.  Since there can be multiple versions of a library released, the managers can be told to find a specific version or range of versions to find.  Some tools will then produce files that will warn other developers if they are somehow out of sync with the latest depednecies.

In theory, developers should only have to commit these dependency files to the source control, since these files provide instructions for other developers on how to get the rest of the necessary files.  However, there are several reasons why I will keep on commiting these libraries.

### Relying On The Generousity Of Others

![Sharing](http://images.clipartpanda.com/generosity-clipart-gg57697227.jpg)

It's easy to forget that these libraries we are now using come from the hard work of others in the community.  Not only are they producing these libraries for our use, they are also in charge of distributing their libraries or code.  So now, the project is no longer just depending on third-party code, it is depending on a third-party.  If the source of the distribution one day goes down or even worse the owner decides to delete the library, the project will now be broken.

### Always Be Ready To Ship

![Keep Calm and Always Be Ready](http://sd.keepcalm-o-matic.co.uk/i/keep-calm-and-always-be-ready-3.png)

To me, the most important principle for a project is to "always be ready to ship", which means that we can make a build given that we have the source code.  By commiting the dependencies with the source code for the project, we are guaranteeing to the other developers and the build machines that it is ready to go.  There should never be a time that you tell a client that we can't ship because the build server can't get the depenencies needed.

### Always Be Able To Go Back

Similar to being able to ship, with source control, you should always be able to get back to a point in time in code and it still compiles.  For example, if you need to be able to reproduce a bug that is occurring in production, you should be able to checkout that commit and debug from there.  However, if you are not able to get the correct version of the depency, than you could have issues finding what is causing the bug.  If you commit your dependencies, than the dependencies will also be there when you checkout that commit.

### Keep It Secure

![Safety First](http://www.bodybalancers.com/assets/img/posts/5.jpg)

Depending on the level of security required for your project, you may not be able to use dependencies, but if you are able to use dependencies you should be reviewing your dependencies and making sure they are secure.  However if you are constantly redownloading the dependencies from a third-party source, it is possible that someone could have replaced the library with a less secure or worse a dangerous copy.  So if you want to maintain the level of security for your application you should be keeping those libraries safe.

### Downloading Is Not The Soul Purpose Of Depenency Managers

> CocoaPods is not about downloading code. While it does do that, it’s arguably the least interesting part.
>
> What defines CocoaPods are the (cross) dependency resolution, (semantic) version management, and automating the ‘integrating it into Xcode’ parts.
> 
> [- Cocoapods](http://guides.cocoapods.org/using/faq.html)

Downloading code is just a small portion of what dependency mangers are made for, and it really only needs to happen once.

## Counter Arguments

Right now, I feel like the minority when it comes to this opinion, because looking at any number of GitHub repos will find these dependency specification files but no libraries commited.  Everytime I have had this conversation there are a few arguments that come up against my policy.

### Keeping Dependencies Up To Date

As we all know, bugs are a given for code, and these dependencies will be updated with fixes.  Most people think you should always be updating dependencies, to keep fixing all the bugs and getting the new features.  However, just updating the dependency may now introduce a new bug into your project.  I believe that updating a dependency is always a very big deal, because it's changing code, so you should treat it like how you treat code you change and commit it.  Additionally I follow the prinicple "if it's not broke, why fix it?", so only update the dependencies when there is an issue impacting your project.

### It Bloats The Soruce Control

Disk space is not an issue anymore, but many still argue that by checking in your dependencies you are bloating the source control.  Additionally they will argue that you are tracking the changes occurring in the dependencies.  I will agree with this argument, however I would counter that if the managers didn't pull down the source code and instead pulled down pre-built libraries, than this issue would no longer exist.  I realize there are different requirements with pre-built libraries, but I believe it is wrong to get the code for a dependency.

## Alternative Solution To These Problems

Every problem has multiple solutions, and here are some that I have heard while discussing this idea.

### Archive Dependencies With Every Build/Tag

One alternative solution for maintaining depedencies across time, is the archive the dependencies at the key points of the project lifecycle, like each build or release.  However if you use tools like git bisect to trace back bugs, this solution will be troublesome.

### Cache Dependencies Locally

Another solution for making sure the dependencies are always available and always secure is to maintain a source that caches all the depenencies maintain by you.  This way if a source is deleted or changed incorrectly, you will have the correct library.  However this is another system for you to have to maintain and updating dependencies is harder.
