# code to test __FILE__ use
class Foo
  def hello
    puts "Hello World"
  end
end

# This code gets called whenever we run run_class_test.rb
if __FILE__ == $0
  foo = Foo.new
  foo.hello
end
