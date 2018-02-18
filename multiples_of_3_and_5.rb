# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
def solution(number)
  nums = []
  (0...number).each do |num|
    nums << num if (num % 3).zero? || (num % 5).zero?
  end
  nums.reduce(0, :+)
end
