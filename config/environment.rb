require 'bundler/setup'
require 'sinatra/activerecord'
require 'sqlite3'
require 'require_all'
require 'pry'
  Bundler.require

  require_all 'lib'

#   binding.pry