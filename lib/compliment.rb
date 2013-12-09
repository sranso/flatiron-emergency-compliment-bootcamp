require 'debugger'
class Compliment
  attr_reader :message

  MESSAGES = [
    "Who did your hair? It's never looked better.",
    "Your code gets better every day.",
    "HAHAH whaat stop I'm laughing too hard!",
    "Unicorns only appear when you're in the room.",
    "The gold leaves in your hair must be worth more than a thousand suns!"
  ]

  def message
    MESSAGES.sample
  end

  def image
    @images = []
    Dir["public/img/*"].each do |file|
      @images << file[6..-1]
    end
    @images.sample
    # debugger
    # puts 'hi'
  end

end