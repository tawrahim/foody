require File.absolute_path('lib/guide')

# The Guide is the name of the class
describe Guide do
	before(:each) do
		@obj = Guide.new			
	end
	
	it "should probably initialize" do
	end
	
	it "should respond to the launch method" 
	it "should respond to the introduction  method" do
		@obj.should respond_to(:introduction)
	end

	it "should respond to the conclusion method" do
		@obj.should respond_to(:conclusion)
	end
end
