class Solver
  def factorial(num)
    return 1 if num.zero?

    raise ArgumentError if num.negative?

    result = 1
    (1..num).each do |i|
      result *= i
    end
    result
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(numb)
    if (numb % 3).zero? && (numb % 5).zero?
      'fizzbuzz'

    elsif (numb % 3).zero?
      'fizz'

    elsif (numb % 5).zero?
      'buzz'
    else
      numb.to_s
    end
  end
end
