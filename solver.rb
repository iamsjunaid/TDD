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
end
