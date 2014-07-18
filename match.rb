require 'ansi/code' #it adds color in the terminal . . . not necessary, but kinda pretty 

# ---  Functions  ---- #

def match(plaintiff,defendant) #create a function to compare two bottom line negotiation positions

@match=(plaintiff+defendant)/2 # A "match is any case where the defendant's bottom line is greater than the plaintiff's bottom line 
   if plaintiff==defendant
	return ANSI::Code.blue { "Your case is settled for $#{@match}" }
   end
  if plaintiff < defendant
	return ANSI::Code.yellow { "Your case is settled for $#{@match}" }
   end
  if plaintiff > defendant
	 return ANSI::Code.green { "The plaintiff's bottom line offer is less than the defendant's bottom line demand.  Sorry - no settlement here." }
  end
end


def confirm
confirm = gets.chomp
if confirm == "yes"
clear #clear the screen so the other side can't see it
else
	puts "OK -- try again!"
	Process.exit
end
end


def spacer
$i = 0
$num = 5

while $i < $num  do
	puts " \n\ "
	$i +=1
end
end

def clear
	puts "\e[H\e[2J"
end

def about
print ANSI::Code.yellow { "This programs performs double blind match of the bottom-line settlement posititions of a single plaintiff and a singled defendant. \n\ \n\ " }
print ANSI::Code.yellow { "A mediator asks one party to leave the room.  In this implementation, we start by asking the defendant to do so. \n\ \n\ " }
print ANSI::Code.yellow { "After the defendant leaves the room, the plaintiff types their bottom line -- the least they are willing to accept -- into the terminal. \n\ \n\ " }
print ANSI::Code.yellow { "The mediator then excuses the plaintiff, the screen is cleared, and the  defendant enters the room and enters their bottom line into the terimial. \n\ \n\ " }
print ANSI::Code.yellow { "The program then reports (1) whether there is a match, defined as any  case where the plaintiff is willing to pay more than the defendant's bottom line or (2) no match. \n\ \n\ " }
print ANSI::Code.yellow { "If there is a match, the program reports the match amount by adding  plaintiff + defendant and then dividing the sum by two. \n\ \n\ " }
print ANSI::Code.yellow { "A more complex implementation is provided by the impassebreaker platform, but this cuts to the chase and performs a similar service with in person settlement negotiation. \n\ " }
end


# ----- "The View" ----- #
 
# take user input from the mediator's screen

clear #clear the screen
spacer
print ANSI::Code.red { "The Mediator Widget \n\ \n\ " }
about
puts " \n\ "

print "Plaintiff -- enter your bottom-line: "  #plaintiff types their number into the mediator screen
plaintiff = gets.to_i
print "Plaintiff -- you entered $#{plaintiff}. Are you sure?  Type 'yes' to confirm.\n\ "
confirm

spacer
print "Defendant -- enter your bottom-line: "  #defendant types their number into the mediator screen
defendant = gets.to_i  
clear #clear the screen so the other side can't see it

a = match(plaintiff,defendant)
puts a