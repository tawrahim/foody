# The heart of our application is the Guide class
# In here is what a lot of things live

class Guide

	# The initialize method takes an optional argument of the
	# path to the restaurant file. If user does not supply any
	# argument we are going to create it	
	def initialize(path=nil)
		# locate the restaurant text at the path
		# or create a new file
		# exit if create fail
	end

	# Here we define the launch method with ! this means that it
	# could be destructive, well destructive in the sense that it
	# launches our app
	def launch!
		#introduction
		# action loop
		#   what do you want to do? (list, find, add, quit)
		#   do that action
		# repeat until user quits
		# conclusion
	end
	
	def introduction
		puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
		puts "This is an interactive guide to help you find food"		
	end
	
	def conclusion
		puts "\n\n<<< Goodbye and Bon Appetit! >>\n\n\n"
	end

end
