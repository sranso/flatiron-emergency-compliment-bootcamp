require './lib/compliment'
require 'bundler'
Bundler.require

class EmergencyCompliments < Sinatra::Application
  get '/compliments' do
    erb :compliment
  end
end