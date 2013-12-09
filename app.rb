require './lib/compliment'
require './lib/color'
require 'bundler'
Bundler.require

class EmergencyCompliments < Sinatra::Application

  get '/compliments' do
    @compliment = Compliment.new
    @color = Color.new
    erb :compliment
  end

end