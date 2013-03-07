# In this class we just define a restaurant class
# that just take care of all our menu and text file
# We want to be a bit object oriented so that's why we
# are doing that. Our class is gonna be private though

class Restaurant

	# creating a class variable
	@@filepath = nil

	# because it is a class variable we have to make an instance set it with a method
	# so the reason why there is an equal sign in the name of the method, is because
	# we want to save whatever it is passed to us in the file path var
	def self.filepath=(path=nil)
		@@filepath = File.join(APP_ROOT, path)
	end

	attr_accessor :name, :cuisine, :price

	# Boolean method to check whether the file exists or not
	def self.file_exists?
		# class should know that the file a exist	
		# we are testing to make sure that our variable has
		# been set and also use ruby's method to check
		if @@filepath && File.exists?(@@filepath)
			return true
		else
			return false
		end
	end

	# Lets try some private class method to use. So it is sort
	# of basically checking if the file is usable
	def  self.file_usable?
		return false unless @@filepath
		return false unless File.exists?(@@filepath)
		return false unless File.readable?(@@filepath)
		return false unless File.writable?(@@filepath)
		return true
	end

	# Obviously if the file does not exists we want to create it
	def self.create_file
		File.open(@@filepath, 'w') unless file_exists?	
		return file_usable?
	end


	# Reads the restaurants and then returns us with an instance
	def self.saved_restaurants
		restaurants = []
		if file_usable?
			file = File.new(@@filepath, 'r')
			file.each_line do |line|
				restaurants << Restaurant.new.import_line(line.chomp)
			end
			file.close
		end		
		return restaurants
	end

	def import_line(line)
		line_array = line.split("\t")
		@name, @cuisine, @price = line_array
		return self
	end

	
	def initialize(args={})
		@name = args[:name] || ""
		@cuisine = args[:cuisine] || ""
		@price =   args[:price] || ""
	end
	# save our file to the list
	def save
		return false unless Restaurant.file_usable?
		# All we are doing here is appending some stuffs to end 
		# of our file
		File.open(@@filepath, 'a') do |file|
			file.puts "#{[@name, @cuisine, @price].join("\t")}\n"
		end
		return true
	end

	def self.build_using_questions
		puts "\n\n << Adding to the menu >>>\n"
		args = {}
		print "Restaurant name "
		args[:name] = gets.chomp.strip
		print "Cuisine name "
		args[:cuisine] = gets.chomp.strip
		print "Price "
		args[:price] = gets.chomp.strip

		restaurant = Restaurant.new(args)
	end
end
