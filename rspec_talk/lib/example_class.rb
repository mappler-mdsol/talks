# a class for demonstrating rspec
class ExampleClass
  def my_reverser(word_to_reverse)
   word_to_reverse.reverse
  end

  def side_effect_fun(some_number_counter, number = 0)
    return "adding zero is useless!" if number == 0
    
    some_number_counter.add_a_number(number)
    some_number_counter.print_the_total
    return 'it works!!!!!'
  end
end

# a class that's an addition calculator
class NumberCounter
  def initialize( base_number = 0)
    @total = base_number
  end

  def add_a_number(number = 0)
    @total += number
  end

  def print_the_total
    puts "the total is #{@total}"
  end
end
