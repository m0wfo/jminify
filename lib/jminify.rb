module JMinify; end

require 'java'
require File.join(File.dirname(__FILE__), 'java', 'yuicompressor-2.4.7.jar')

rb = File.join(File.dirname(__FILE__), 'jminify', '*.rb')
Dir[rb].each { |r| require r }
