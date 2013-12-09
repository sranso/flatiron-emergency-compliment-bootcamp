require './lib/compliment'
require 'bundler'
Bundler.require

class EmergencyCompliments < Sinatra::Application

  get '/compliments' do
    @compliment = Compliment.new
    erb :compliment
  end

end