# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CourseProject::Application.initialize!

ActiveSupport::CoreExtensions::Hash::Conversions::XML_PARSING.delete('symbol')
ActiveSupport::CoreExtensions::Hash::Conversions::XML_PARSING.delete('yaml')
