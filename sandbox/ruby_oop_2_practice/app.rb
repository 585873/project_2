require "pry"

# class Group
#   attr_accessor :people
#     def initialize(initial_people = [])
#       @people = initial_people
#   end
#
#    def add_person(person)
#      @people << person
#  end
# end
class Person
  attr_accessor :name
  attr_reader :age
  # @@people = []
  #  def self.count_people
  #     @@people.length
  #  end
  # #class variable
  # # @@people = []

  def initialize(intial_name, initial_age)
      @name = intial_name
      @age = initial_age
      @@people << self
   #self refers to instance
  end
   def say_name
     "Hello, my name is #{self.name}"
   end
 end

#    def old_enough? #method that will return true or false
#      if @age >= 18
#      return true
#    else
#      return false
#    end
#     def is_older?(other_person)
#       other_person.age > @age
#
# end

  class LoudPerson < Person
     attr_accessor :big_mouth
     def initialize(intial_name, initial_age, big_mouth)
       super(intial_name, initial_age)
        @big_mouth = big_mouth
   end
     def say_name
       "HELLO, MY NMAE IS #{self.name.upcase}"
     end

  class Quiet < Person
      #  def initialize(intial_name, initial_age, big_mouth)
      #    super(intial_name, initial_age)
      #     @quiet_mouth = quiet_mouth
      #  end
        def say_name
          "hello my name is #{self.name.downcase}"
        end

  class VeryLoudPerson < LoudPerson
    # def initialize(intial_name, initial_age, big_mouth)
    #   super(intial_name, initial_age)
    #    @Loudest_mouth = loudest_mouth
    # end
      def say_age
        "My age is #{self.age}"
      end
  class TwoHeadedPerson < Person
      attr_accessor :second_name
      def initialize(name, second_name, age)
        super(name, age)
        @second_name = second_name
      end
   end

  # instructors = Group.new
  andy = LoudPerson.new("Andy", 25, true)
  james = Person.new("James", 30)

   binding.pry
