require 'active_record'
require 'logger'
require 'yaml'

task :default => :migrate

desc "Migrate the database through scripts in db/migrate. Target specific version with VERSION=x"
task :migrate => :environment do
  ActiveRecord::Migration.verbose = true
  ActiveRecord::Migrator.migrate('db/migrate', 1)
end

task :environment do
  PG_SPEC = ENV['DATABASE_URL'] || YAML::load(File.open('database.yml'))
  ActiveRecord::Base.establish_connection(PG_SPEC)
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end