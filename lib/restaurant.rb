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

	# Boolean method to check whether the file exists or not
	def self.file_exists?
		# class should know that the file a exist	
	end

	# Obviously if the file does not exists we want to create it
	def self.create_file
		
	end


	# Reads the restaurants and then returns us with an instance
	def self.saved_restaurants
		
	end
end
