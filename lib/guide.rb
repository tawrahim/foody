# The heart of our application is the Guide class
# In here is what a lot of things live
require File.expand_path('lib/restaurant')
class Guide


	# The initialize method takes an optional argument of the
	# path to the restaurant file. If user does not supply any
	# argument we are going to create it	
	# Am really surprised that the anything in the initialized
	# that has a print gets called.....DUH! that is why it is an
	# initialize method. It is supposed to run first when an obj
	# is created
	def initialize(path=nil)
		# locate the restaurant text at the path
		# Hmmm...you might be wondering why the heck don't we have
		# an object. well stupid if you remember class methods can be
		# called on the class
		Restaurant.filepath = path
		if Restaurant.file_usable?
			puts "Found the file"
		# or create a new file
		elsif Restaurant.create_file
			puts "Created file"
		else
			# exit if create fail
			puts 'Exiting because create failed'
			exit!
		end
	end

	# here we define the launch method with ! this means that it
	# could be destructive, well destructive in the sense that it
	# launches our app
	def launch!
		introduction
			result = nil
			until result == :quit
			# action loop
			#   what do you want to do? (list, find, add, quit)
			print "> "
			user_response = gets.downcase.strip!
			#   do that action
			result = do_action(user_response)
			# repeat until user quits
		end
		conclusion
	end
	
	def do_action(action)
		case action
		when 'list'
			list
		when 'find'
			puts 'finding'
		when 'add'
			addy
		when 'quit'
			return :quit
		else
			puts "command not valid"
		end
	end
	
	# command for listing 
	def list
		puts "\n Listing restaurants\n\n"
		restaurants = Restaurant.saved_restaurants
		restaurants.each do |rest|
			puts rest.name + " | " + rest.cuisine + " | " + rest.price
		end

	end
	# command for add to file	
	def addy 
		restaurant = Restaurant.build_using_questions
		if restaurant.save 
			puts "\nRestaurant Added\n\n"
		else
			puts "\nError: restaurant not added\n\n"
		end
	end

	def introduction
		puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
		puts "This is an interactive guide to help you find food"		
	end
	
	def conclusion
		puts "\n\n<<< Goodbye and Bon Appetit! >>\n\n\n"
	end

end
