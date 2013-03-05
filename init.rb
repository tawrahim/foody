####### Food app #
#
# Launch this Ruby file from the command line
# to get started
#

# Define the root of the application
# The File.dirname
APP_ROOT = File.dirname(__FILE__)

# $:=> simply lists out all the files that ruby loads
# Since we want to add our lib directory to it
# we are deciding to call the ushift method
# on it to be able to add it to our standard ruby path
$:.unshift(File.join(APP_ROOT, 'lib'))

# we want to require 'guide' since it contains the guide info
require 'guide'



