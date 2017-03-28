require "pry"

class user
  def set_name_to(some_string)
    @name = some_string
  end

  def get_name
    return @name
  end
  def greet
    put "Hi I'm #{@name}"
  end

end
   binding.pry

   puts "End of file"
