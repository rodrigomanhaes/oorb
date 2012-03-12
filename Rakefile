require 'active_record'
require 'yaml'
require 'logger'
require 'sqlite3'

task :migrate => :environment do
  ActiveRecord::Migrator.migrate('db/migrate',
    ENV['VERSION'] ? ENV['VERSION'].to_i : nil)
end

task :rollback => :environment do
  ActiveRecord::Migrator.rollback('db/migrate',
    ENV['STEP'] ? ENV['STEP'].to_i : 1)
end

task :environment do
	['test', 'development'].each do |env|
	  ActiveRecord::Base.establish_connection(
	    YAML::load(File.open('./config/database.yml'))[env])
	  ActiveRecord::Base.logger = Logger.new(File.open("./log/#{env}_database.log", 'a'))
	end
end

