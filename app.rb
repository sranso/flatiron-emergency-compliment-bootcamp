require './lib/compliment'
require './lib/color'
require 'bundler'
Bundler.require

class EmergencyCompliments < Sinatra::Application

  before do
    @@prev_msg ||= nil
    @@prev_color ||= nil
  end

  get '/' do
    @compliment = Compliment.new.message
    same_as_last_msg?
    @@prev_msg = @compliment

    @color = Color.new.rando
    same_as_last_color?
    @@prev_color = @color
    erb :compliment
  end

  helpers do
    def same_as_last_msg?
      while @compliment == @@prev_msg
        @compliment = Compliment.new.message
      end
    end

    def same_as_last_color?
      while @color == @@prev_color
        @color = Color.new.rando
      end
    end
  end
end