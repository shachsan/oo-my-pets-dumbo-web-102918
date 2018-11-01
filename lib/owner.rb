class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].map {|dog|dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|cat|cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|fish|fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.map {|pet|pet.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
<<<<<<< HEAD
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
=======
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count}1 cat(s)."
>>>>>>> 55598586727b65f4feca1eedc36f9843c490f591
  end
end
