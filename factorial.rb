# Computes a factorial based on user input

class Calculator

  def factorial(val)

    if (val == 0)

      return 1

    end

    result = val
    i = 1
    while (i < val - 1)

      result *= (val - i)
      i += 1

    end

    return result

  end

end

while (true)

  print "Please enter a factorial to evaluate (enter -1 to quit): "
  val = gets.chomp.to_i

  if val == -1

    puts "\nExiting..."
    break

  end
  if (val < -1)

    print "\nError: Invalid input (integers from -1 and beyond allowed)\n\n"
    next

  end

  calc = Calculator.new

  print "\nThe factorial of #{val}! is #{calc.factorial(val)}\n\n"

end