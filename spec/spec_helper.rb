require 'database_cleaner'

RSpec.configure do |config|
  Dir[File.expand_path(__FILE__ + '/../..') + '/domain/**/*.rb'].each do |f|
    require f
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
