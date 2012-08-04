# bank thing .2 (using arrays)
require 'colorize'

class Ledger
	def initialize
		#get current balance print it on the screen
		#@bal = 10
		@debits = []
		#*************************************************
		#*This is probably the first for loop of my life.*
		#*It's going to be used to read in line by line  *
		#*from this file and reconstruct the array.      *
		#*************************************************

		file = File.open('debits.txt', 'r') do |file|
			while line = file.gets
				@debits << line.chomp
			end
		end


		


		#puts "debits is this before"
		#file = File.new('debits.txt', 'r')
		#@debitfile = file.gets
		# puts "Your balance is #{@bal}"
		# @debits = []
		#@debits << @debitfile
		puts "this is your current debits #{@debits}"

	end


	def add
		#We'll be getting this debits veriable from a file in the future
		#@debits = []
		#create an array for the sole purpose of adding it to the debits array
		# p @debits.class
		print "what do you need the money for? "
		@key = gets.chomp!
		print 'oh yeah?  and how much do you need? '
		@value = gets.chomp!
		@addit = [@key, @value]
		p @addit.class
		p @addit
		@debits << @key
		@debits << @value
		puts "This is what the ledger looks like #{@debits}"
		p @debits.class

		file = File.open("debits.txt", "w")
		file.puts @debits
		file.close
		puts "debits saved!".red
	end

	def check
		# I need to pull out the odd numbered slots out of the array for the math part
		# I'll do this by constructing a new array of just the numbers from the 
		# key, value pairs in the initial @debits array
		@a = 1
		@nums = []
		@x = 'eirsni'
		puts " the variable 'a' is a #{@a.class}"
		
		until @x == nil do
			@x = @debits[@a]
			@a = @a + 2
			@nums << @x
		end

		puts "Check de numbers #{@nums}"
		puts "Check de original array #{@debits}"
	end

	def subtract
		puts '*****************************'
		puts 'This is the subtract method!!'
		@balance = 1000000
		@nums.pop
		puts "This is the original balance #{@balance}"
		puts "These are the numbers being subtracted ".blue
		puts @nums.to_s.red
		for i in @nums
			@balance -= i.to_i
		end
		puts "This is the remaining balance #{@balance}".green

	end	


end

first = Ledger.new
2.times do first.add end
first.check
#first.add
#first.check
#first.subtract