Text filter pre-Interview task
==============================

Write a function that will take a string as an input, identify whether it contains any items from a list of banned words that aren't listed in the exceptions. The function should return the original string with the vowels of all banned words replaced with dashes "-".  All checking should be case insensitive.

Banned word |	Exception 1 | Exception 2
--- | --- | ---
red | covered | coloured
green | evergreen | greenbelt
blue | blues | 	
yellow | | 		

You can use any programming language you're comfortable with, but will need to talk through your approach and demonstrate it working.

Instructions
------------
These are the instructions for how to download and test the application:

```sh
$ git clone https://github.com/omajul85/TextFilter.git
$ cd TextFilter/
$ irb
$ require './lib/text_filter'
$ text_filter("The house is RED and GrEEn")
$ => "The house is R-D and Gr--n"
```
Testing
-------

You can run the test using the command below:

```sh
$ cd TextFilter/
$ rspec
```