# Create method `parrot` that outputs a given phrase and
# returns the phrase
  def parrot
    puts "Squawk!"
  end

  def parrot(bird="Squawk!") 
    puts "#{bird}"
    return "Squawk!"
  end

  def parrot(bird="Squawk!") 
    puts bird
    bird
  end

    