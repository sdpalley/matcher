Matcher
=======

####What is this?
Matcher is a terminal based ruby application that allows people to do in person **double-blind** settlement negotation using a computer.
#####Double what?
In a double blind negotiation, neither side knows the other's offer unless certain conditions are met.  In matcher, the condition is that the "ceiling" must be greater than the "floor."
#####How do I use it?
If you use a mac, Ruby is built in.  Download the file, type `ruby match.rb` and follow the directions.  This does include `ansi/code`for colors (just for the heck of it) so you may need to do `gem install ansi` if it's not installed on your machine and this throws an error.  Or just delete the require and the colors -- they're filligree, and not necessary.
######Why bother?
I've found that the approach works really well in litigation, and saves people time and money.  A much fancier implementation can be found at www.impassebreaker.com.  I was curious how this would look if it were really simple, and what others might do with the idea if it were stripped to its core.

######What can I do with this?
See the license below.  Copy, fork; code corrections welcome ; ) I'm a lawyer, after all, not a professional programmer.

----

The MIT License (MIT)

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
