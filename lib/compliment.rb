class Compliment

  def message
    @messages = []
    File.readlines('./public/compliments.txt').each do |line|
      @messages << line
    end
    @messages.sample
  end

end