require 'active_record'
require 'yaml'

DB ||= 'development'

ActiveRecord::Base.establish_connection(YAML::load(
  File.open(File.join(File.dirname(__FILE__), 'database.yml')))[DB])

