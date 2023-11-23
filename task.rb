#Бережний Дмитро КС31
module Printable
  def print_info
    puts "Name of the class -> " + self.class.to_s

    instance_variables.each do |instance_variable|
      name = instance_variable.to_s
      value = instance_variable_get(instance_variable).to_s
      puts "Instance variable -> #{name}: #{value}"
    end

    puts "All custom methods of the object -> #{self.public_methods(false)}\n\n"
  end
end


class Person
  include Printable

  def initialize(name, age)
    @name = name
    @age = age
  end

  def do_something
    puts "I do something"
  end

  def do_calculation(var1, var2)
    var1 + var2
  end
end

class Bird
  include Printable

  def initialize(name, color, year)
    @name = name
    @color = color
    @year = year
  end

  def eat
    puts "I am eating"
  end

  def fly(speed)
    puts "Flying at #{speed} km/h"
  end
end


michael_jordan = Person.new("Michael Jordan", 60)
michael_jordan.print_info

bird = Bird.new("Chika", "Red", 2022)
bird.print_info
