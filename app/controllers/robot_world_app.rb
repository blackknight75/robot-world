require_relative '../models/robot.rb'
require 'sinatra'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/robots' do
    @robots = Robot.all
    erb :index
  end
end
