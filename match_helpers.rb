# ---  Functions  ---- #

def match(plaintiff,defendant) #create a function to compare two bottom line negotiation positions

@match=(plaintiff+defendant)/2 # A "match is any case where the defendant's bottom line is greater than the plaintiff's bottom line 
   if plaintiff==defendant
	return ANSI::Code.green { "Your case is settled for $#{@match}" }
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
	puts "OK -- please try again!"
	Process.exit
end
end



# --- maybe we'll build a version that stores an encrypted version on the blockchain --- #
# --- this function is work in progress -- not tested and may be broken --- #

def secure_it(number)
	random = rand(2**80)	
	hash = Digest::SHA3.hexdigest(('random') * number.to_i)
puts "Hash: " + hash  
end

## ---------------------------------------------------------------------------------- #


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
print ANSI::Code.yellow { "This programs performs double blind matching of the bottom-line settlement posititions of a single plaintiff and a singled defendant. \n\ \n\ " }
print ANSI::Code.yellow { "A mediator asks one party to leave the room.  In this implementation, we start by asking the defendant to do so. \n\ \n\ " }
print ANSI::Code.yellow { "After the defendant leaves the room, the plaintiff types their bottom line -- the least they are willing to accept -- into the terminal. \n\ \n\ " }
print ANSI::Code.yellow { "The mediator then excuses the plaintiff, the screen is cleared, and the  defendant enters the room and enters their bottom line into the terimial. \n\ \n\ " }
print ANSI::Code.yellow { "The program then reports (1) whether there is a match, defined as any  case where the plaintiff is willing to pay more than the defendant's bottom line or (2) no match. \n\ \n\ " }
print ANSI::Code.yellow { "If there is a match, the program reports the match amount by adding  plaintiff + defendant and then dividing the sum by two. \n\ \n\ " }
print ANSI::Code.yellow { "A more complex implementation is provided by the impassebreaker platform, but this cuts to the chase and performs a similar service with in person settlement negotiation. \n\ " }
end
