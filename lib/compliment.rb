class Compliment

  MESSAGES = [
    "You know more today than you did yesterday.",
    "Your code gets better every day.",
    "You'll get there, keep trying.",
    "You got in! Therefore you deserve to be here.",
    "Stop comparing yourself--you're great.",
    "Take a breath, take a break.",
    "There is more to life than code. But for now, learn what you can.",
    "You're getting back as much as your putting in. Remember that.",
    "Look around you! Aren't these people great?",
    "\"If you keep putting bricks on top of each other, it might take a long time but eventually you’ll have a wall.\"",
    "Remember when you didn't know what a hash was? You've come so far!",
    "Enjoy these moments."
  ]

  def message
    MESSAGES.sample
  end

end