Matcher
=======

####What is this?
Matcher is a terminal based ruby application that allows people to do in person **double-blind** settlement negotation using a computer.
#####Double what?
In a double blind negotiation, neither side knows the other's offer unless certain conditions are met.  In matcher, the condition is that the "ceiling" must be greater than the "floor."
#####How do I use it?
If you use a Mac, Ruby is built in.  Download the file, type `ruby match.rb` and follow the directions.  This does include `ansi/code`for colors (just for the heck of it) so you may need to do `gem install ansi` if it's not installed on your machine and this throws an error.  Or just delete the require and the colors -- they're filligree, and not necessary.  
#####How does it work?
-  Assume you're in a negotiation with two parties and you've reached an impasse.  Neither side will move.

- The parties may each have a bottom-line that they are willing to either (1) pay or (2) accept.

- However, they can't just jump to their bottom line because if the other side doesn't they will have lost massive negotiation leverage, and either created a new floor or new ceiling.

- Ask one side to step out of the room.

- Ask the other side to type their bottom line into **Matcher** and then leave the room.

- The screen will clear and the other side will enter the room and type their 'bottom-line' number into the computer.  

- If there is a match, Matcher will report the amount of the match.  (You can, of course, change how this is calculated pretty easily).

- If there is no match, Matcher just says there's no match.  This happens if the paying party is unwilling to pay an amount equal to or greater than the recipient's bottom line.

- That's it.  If the mediator doesn't look at the screen they won't know the number either.  (Yes, they could potentially find it on their computer if they really wanted  to,  But this isn't intended to be a complete solution -- and the full ImpasseBreaker site does solve that problem.)

#####Why bother?
I've found that the approach works really well in litigation, and saves people time and money.  A much fancier implementation (with more explanation) can be found at www.impassebreaker.com.  Mediators can be really helpful, but they also add a personal element or dynamic that can get in the way of negotiating.  Sometimes, you may not want the mediator to know what a bottom line is.  This approach allows for comparison without a human intermediary.  
#####Why no pretty user  interface?
As noted above, there's a fancier version on the web that has nice UI, can send emails, create documents, it can even mix a decent Martini  (well, not just yet).   I was curious how this would look if it were really simple, and what others might do with the idea if it were stripped to its core.   So this is simple by design.

#####To-dos & Things that would be cool to add
- p2p communication
- Matching using a form of Yao's protocol for secure two-party computation. 

#####What can I do with this?
See the license below.  Copy, fork, reinvent.  And code corrections are welcome ; ) I'm a lawyer, after all, not a professional programmer.  Feedback and suggested improvements are certainly welcome.  


------

##The MIT License (MIT)

Copyright (c) 2014 Stephen D. Palley

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
