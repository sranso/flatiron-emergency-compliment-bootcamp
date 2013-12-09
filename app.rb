require './lib/compliment'
require 'bundler'
Bundler.require

class EmergencyCompliments < Sinatra::Application

  get '/compliments' do
    @compliment = Compliment.new
    # @image = @compliment.image
    # @message = @compliment.message
    erb :compliment
  end

end