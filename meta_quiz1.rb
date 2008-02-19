# Print hello world from outside of class
class Greeting 
  class << self
    def self.hello 
      puts "Hello World!" 
    end
  end

  # this line is the solution
  def self.meta; class << self; self.superclass; end; end

end

Greeting.meta.hello
