require File.absolute_path('lib/guide')

# The Guide is the name of the class
# We could have easily done the same thing if it were to
# belong to a module
describe Guide do
	before(:each) do
		@obj = Guide.new			
	end
	
	it "should probably initialize" do
	end
	
	it "should respond to the launch method" do
		@obj.should respond_to(:launch!)
		pending "bug on why it does not respond" do
			@obj.should respond_to(:self.introduction)
		end
	end

	it "should respond to the introduction  method" do
		@obj.should respond_to(:introduction)
	end

	it "should respond to the conclusion method" do
		@obj.should respond_to(:conclusion)
	end
end
