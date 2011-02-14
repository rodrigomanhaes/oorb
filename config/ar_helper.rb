require 'active_record'
require 'yaml'

ActiveRecord::Base.establish_connection(YAML::load(
  File.open(File.join(File.dirname(__FILE__), 'database.yml'))))

