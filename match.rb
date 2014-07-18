# Match.rb
# Double blind matching tool
# Copyright (c) 2014 Stephen D. Palley
# Use and distribution are subject to the MIT License 

# --- Requires ---- #
require File.join(File.dirname(__FILE__), 'match_helpers.rb')
require 'ansi/code' #it adds color in the terminal . . . not necessary, but kinda pretty 
require 'digest/sha3'
require 'securerandom'


# ----- "The View" ----- #
 
# take user input from the mediator's screen

clear 

print ANSI::Code.red { "The Mediator Widget \n\ \n\ " }
about
puts " \n\ "
print "Press enter to start."
ready = gets.chomp
clear
spacer

# -- Get plaintiff's secret number -- #

print "Plaintiff -- enter your bottom-line: "  # plaintiff types their number into the mediator screen
plaintiff = gets.chomp
@secure_plaintiff = secure_it(plaintiff)  # encrypt for storage:  to-do
plaintiff = plaintiff.to_i
print "Plaintiff -- you entered $#{plaintiff}. Are you sure?  Type 'yes' to confirm.\n\ "
confirm

# -- Clear the screen -- #


clear
spacer


# -- Get defendant's secret number -- #


print "Defendant -- enter your bottom-line: "  #defendant types their number into the mediator screen
defendant = gets.chomp
@secure_defendant = secure_it(defendant)  # encrypt for storage:  to-do
defendant = defendant.to_i
print "Defendant -- you entered $#{defendant}. Are you sure?  Type 'yes' to confirm.\n\ "
confirm
clear 


# -- Clear the screen and then use our match function to compare the numbers -- #

puts match(plaintiff,defendant)




