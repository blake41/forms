# Lecture Notes Format

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table Of Contents**

- [Where to put these](#where-to-put-these)
- [What Should It Look Like](#what-should-it-look-like)
  - [Students Will Be Able To:](#students-will-be-able-to)
  - [Motivation](#motivation)
  - [Lesson Plan](#lesson-plan)
  - [Resources](#resources)
  - [Labs](#labs)
- [Priorities](#priorities)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Where to put these

Commit your lecture notes to the appropriate curriculum repo on github. So for iOS that would be [here](https://github.com/learn-co-curriculum/ios-curriculum). Then make sure that it is linked up appropriately!

## What Should It Look Like

### Students Will Be Able To:

This section should explain in very real terms, what students will walk away from this lecture with. It should be a bulleted list that finishes the sentence "Students will be able to...". So, for example, if we were creating lecture notes for Methods, we could have our SWBATs to be:

#### Example

 * METHODS - explain what a method is and why it's used
 * METHODS - use built in methods for each data type and structure
 * METHODS - chain methods together
 * METHODS - experiment and investigate unknown ruby methods using documentation and other
internet resources
 * METHODS - explain what a return value is and what it's used for
 * METHODS - explain and determine the return value of a method
 * METHODS - explain what the return value of the puts method is
 * METHODS - differentiate between methods that puts and methods that return a value
 * SCOPE - explain that local variables cannot work between methods because of scope
 * METHODS - explain the difference between defining and calling a method
 * METHODS - call previously defined custom methods
 * METHODS - create a custom method 
 * METHODS - use correct syntax in naming methods
 * METHODS - create a custom method using arguments

You'll notice that these are pretty granular. Also sometimes we'll prefix the SWBAT with a bit of categorization. That isn't required but makes it easier when you have a lot of SWBATs.

**If you have nothing else, having the SWBATs is the most important**

### Motivation

Presenting the motivation is about explaining the *conflict* that the lecture is trying to resolve. Like any good story, we must start with a reason to keep listening. We must start with the conflict that over the next hour of lecture will be slowly resolved. It can seem silly sometimes for the simplicity of the conflict for early concepts, but don't forget this! It may be obvious why something is useful you, but not to the students.

#### Example

For example. Working on our Methods Lecture Notes:

  * Many times in your code we have a chunk of code that needs to happen multiple times

  ```objc
  CGFloat checkSubTotal = 35.12;
  CGFloat finalTotal = checkSubTotal * 1.08;
  if (partySize > 6) {
    finalTotal *= 1.20;
  }
  ```
  * Amazon needs to calculate this all the time. So we copy paste
  * What happens when the standard tip rate goes up? We now need to find and replace.
  * You've already used methods. Things like the `isEqual` method.

### Lesson Plan

Here we are at the brunt of your lecture notes! When working on these, remember that every lecturer has their style. The goal is not to write a word-for-word script, it's to give ideas and pitfalls to look out for. There should be a few different things to include

 * The general flow of the lecture from conflict, to resolution
 * Any code examples that work well to explain the concept
 * Pointing out particularly difficult concepts
 * Metaphors to aid in explanation. Mark these with a **metaphor** tag
 * Any terminology they should understand/remember

Here is an example one for our methods explanation. This took me about an hour to create

#### Example

  * Explain the motivation
  * The goal is to **encapsulate** the total finding logic.
  * **Metaphor** Methods are like Vending Machines. You put some sort of input in, and some magic happens, then output happens.
  * **Metaphor** Methods can do a bit more because they don't always need input. When your mom says to get dressed, you then break that down into underwear, pants, shirt, socks, shoes. Now she doesn't need to repeat herself
  * Show syntax

  ```objc
  - (CGFloat) calculateTotal {
    CGFloat checkSubTotal = 35.12;
    CGFloat finalTotal = checkSubTotal * 1.08;
    if (partySize > 6) {
      finalTotal *= 1.20;
    }
    return finalTotal
  }
  ```
  * Explain the parts of the method header.
  * **Metaphor** The return line is the output, that's the coke coming out of the method.
  * Before when we wanted this we would copy/paste. Now we *call* the method
  
  ```objc
  [self calculateTotal];
  ```

  * Two halves to a method call. Left of space is receiver, where method is defined. Right is the method Name
  * Nothing will happens. **Metaphor** this spits stuff out but it's like the coke is sitting in the tray, we need to pick it up and do something
  * There is only one place you define a method, you call it many places

  ```objc
  CGFloat final = [self calculateTotal];
  NSLog(@"%f",final);
  ```

  * this captures the return in the final variable, then logs it
  * **Hard Topic** Many students get confused with the diff between printing and returning
  * This only works for a subTotal of 35.12. Not good
  * We need to take as input, the total we want to calculate on

  ```objc
  - (CGFloat) calculateTotal:(CGFloat)checkSubTotal {
  ```

  * Cover the parts of the method with input
  * cover that is a variable it could also be called james if we wanted
  * Now let's use it
  
  ```objc
  CGFloat final = [self calculateTotal:35.12];
  ```

  * we could put anything in there.
  * look at the error if we put in a non `CGFloat`
  * What if the tax rate and tip rate change?

  ```objc
  - (CGFloat) calculateTotal:(CGFloat)checkSubTotal TaxRate:(CGFloat)taxPercentage TipRate:(CGFloat)tipPercentage {
    CGFloat checkSubTotal = 35.12;
    CGFloat finalTotal = checkSubTotal * taxPercentage
    if (partySize > 6) {
      finalTotal *= tipPercentage;
    }
    return finalTotal
  }
  ```
  
  * remind taxPercentage is just a variable
  * call it

  ```objc
  CGFloat final = [self calculateTotal:35.12 TaxRate:1.08 TipRate:1.20];
  ```

  * point out that only the left of the colon gets used when calling
  * talk about scope
  * **vocab** in scope means can you access a variable?
  * can we access that finalTotal variable outside of this method?

  ```objc
  NSLog(@"%f",finalTotal);
  ```

  * click on the error, point it out. Variables *declared* in a method can't leave
  * same variable, two names? possible!

### Resources

Here I list any slides that I created as well as **videos from previous times you gave this lecture**. Also make sure to link to any lecture code you did last time.

### Labs

Generally when I create lectures, I'm thinking of the labs I want the students to be able to do after this lecture. Go ahead and list the labs that generally follow this lecture.

  * [WWDC-Badges](https://github.com/learn-co-curriculum/wwdc-badges)
  * [Solving Trivia](https://github.com/learn-co-curriculum/solving-trivia)

## Priorities

The most important part of any lecture notes is the SWBATs. After that a brief overview of the metaphors you like as well as **linking to old videos/lecture notes** is very useful.
