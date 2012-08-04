#This is a budget balancing program.
# Initial functionality, 
#  Let me add and subtract from it
# 	Get it from a  file, save it to a file
# => Holy cow!

#$bal = 0
#$newbal = 0
#$dep = 0
require 'colorize'
#   functions i want to add
=begin
  when starting the program it askes you for a name.
		based on the name it check to see if that file exists
		if it doesn't bankthing creates it.
	
	A menu
  arrow keys to move a menu.  just adds a colorize method to an item.


=end
class Bank
	#attr_accessor(:bal, :newbal, :dep, :spend)

	def initialize
		#get current balance print it on the screen
		#@bal = 10
		file = File.new('balance.txt', 'r')
		@bal = file.gets.to_i
		@newbal = 0
		puts "Your balance is #{@bal}"
	end

	def deposit
		print "What are you depositing?"
		@dep = gets.to_i
		#puts @newbal.class
		#puts @dep.class
		#puts @bal.class
		@newbal = @dep + @bal
		puts "You new balance is #{@newbal}".green
	end

	def debit
		print "What's the debit?"
		@deb = gets.to_i
		@newbal = @bal - @deb
		puts @deb.class
		puts @bal.class
		puts @newbal.class
		puts "Your new balance is #{@newbal}".red
	end

	def file
		file = File.open("balance.txt", "w")
		file.print @newbal
		file.close
	end


end

class Menu
	def list_menu_items
	end
	
	def get_menu_items
	end

end


# first = Bank.new

# first.deposit
# first.debit
# first.file
action = "this is me defining the vaiable as a string.  there must be a better way"

until action == "quit" do
	puts "Oh come all ye faithful".red
	puts "Joyful and triumphant"


	action = gets.chomp
	
end

