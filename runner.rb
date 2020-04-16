require 'pry'
require_relative 'config/environment'

concert_app = Cli.new

concert_app.welcome
# concert_app.collect_user_info
# binding.pry