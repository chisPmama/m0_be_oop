# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
attr_reader :name, :color, :input_string
    def initialize(name)
        @name = name
        @color = "silver"
    end
   
    def say(input_string)
        p "*~* I am #{@name} the #{@color} unicorn and I just wanted to say #{input_string}! *~*"
    end
end

unicorn1 = Unicorn.new("Jasmine")
p unicorn1
unicorn1.say("I love you")
p unicorn1


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Dracula")
p vampire1

vampire2 = Vampire.new("Count Dude","wolf")
p vampire2

vampire2.drink
p vampire2

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color
    def initialize(name, rider, color)
      @name = name
      @rider = rider
      @color = color
      @is_hungry = true
    end
    def eat(number)
      if number >= 4
        @is_hungry = false
        "Dragon is no longer hungry!"
      else
        "Dragon is still hungry!"
      end
    end
  end

  dragon1 = Dragon.new("Charzard", "Broc", "red")
  p dragon1
dragon1.eat(8)
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit

    def initialize(name, disposition,age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = false

        if @name == "Frodo"
            @has_ring = true
        end
    end

    def celebrate_birthday(age)
        new_age = age +=1
        @age = new_age
    end

    def adult_old_verification(age)
        @age = age
        if age >= 33 && age >= 101
            @is_adult = true
            @is_old = true
        elsif age >= 33
            @is_adult = true
        end
end


hobbit1 = Hobbit.new("Frodo", "naive")
p hobbit1

hobbit2 = Hobbit.new("Orlando Bloom", "simp")
p hobbit2
hobbit2.adult_old_verification(80)
p hobbit2
hobbit2.celebrate_birthday(90)
p hobbit2
end
