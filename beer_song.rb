#==============Skeletal Ruby Class=====================================
#!/usr/bin/env ruby
#Description
#This script implements printing of the "99 Bottles of Beer" song. #Through this exercise, you will learn ruby program naming #conventions, some simple ruby oo concepts, GIT version control and #problem solving in Ruby. Assume that your console is a wall # where #the song will be written once your code executes. Forexample, for #initial 99 # bottles, the wall should write -
#******************Program Output**************************************
#99 bottles of beer on the wall, 99 bottles of beer
#take one down, pass it around, 98 bottles of beer on the wall.
#98 bottles of beer on the wall, 98 bottles of beer
#take one down, pass it around, 97 bottles of beer on the wall.
#97 bottles of beer on the wall, 97 bottles of beer
#take one down, pass it around, 96 bottles of beer on the wall.
#....
#2 bottles of beer on the wall, 2 bottles of beer
#take one down, pass it around, 1 bottle of beer on the wall.
#1 bottle of beer on the wall, 1 bottle of beer
#take one down, pass it around, no more bottles of beer on the wall.
#*****************End Program Output***********************************

class BeerSong

=begin rdoc
This method implements the constructor. It will initialize the instance variable that holds the count of the bottles at any given time.
=end

def initialize(num_of_bottles)
	@count = num_of_bottles
end

=begin rdoc
This is a Predicate which ends in a question mark, returning <b>Boolean</b> that determines if there is any bottle of beer left.
=end

def empty?()
	@count = 0
end


=begin rdoc
This method sings (prints) exactly one verse at a time. Since it is destructive, it also changes internal state of the object by changing number of bottles. For this, it may call private method defined later.
=end

def sing_one_verse!()
	if @count = 1
	puts "#{@count} bottle of beer on the wall, #{@count} bottle 		of beer.\nTake one down, pass it around, no more bottles of 		beer on the wall."
	
	else
	puts "#{@count} bottles of beer on the wall, #{@count} bottles 		of beer.\nTake one down, pass it around, " + take_one_down()
	end
end


private

=begin rdoc
Destructive method named with a bang. Decrements the number of bottles count. It may return some string or numerical value depending on your logic.
=end

def take_one_down!()
	@count = (@count-1)
	puts "#{@count} botles of beer on the wall."
end
end
#=========================End code=====================================
