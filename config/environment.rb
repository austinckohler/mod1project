require 'bundler/setup'
require 'sinatra/activerecord'
require 'sqlite3'
require 'require_all'
require 'pry'
require_relative '../lib/models/cli.rb'
require 'require_all'
  Bundler.require

  require_all 'lib/models'
  
  

#   ActiveRecord::Base.logger = nil
# ActiveRecord::Base.establish_connection(
#   adapter: 'sqlite3',
#   database: './db/concerts.db')

  binding.pry