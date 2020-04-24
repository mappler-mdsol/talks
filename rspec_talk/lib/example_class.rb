# a class for demonstrating rspec
class ExampleClass
  def my_reverser(word_to_reverse)
    reversed_string = ''

    # Goes through the given word character by character
    word_to_reverse.chars do |char|
      # takes the current character, adds it together with all the characters we've already reversed, 
      # and saves that new word
      new_reversed_string = char + reversed_string
      # saves that new  word in place of the old version
      reversed_string = new_reversed_string
    end
    # returns once all the loops are done 
    return reversed_string
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
