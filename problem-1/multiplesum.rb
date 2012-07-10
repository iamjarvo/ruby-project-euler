class MultipleSum
  def initialize(upper_bound, denominators)
    @upper_bound = upper_bound
    @denominators = denominators
  end

  def get_multiples
    (1...@upper_bound).select do |i|
      @denominators.map do |d|
        i % d == 0
      end.any?
    end
    # if i called map on both without any? [[false, false], [false, false]]
    # calling select returns [1, 2, 3, 4, 5, 6, 7, 8]  because []counts as true
    # calling select and .any? returns the right info
    # this works because any? checks the array for trues if two falses are
    # retured then select sees false and skips it
  end

  def sum
    self.get_multiples.inject { |result, i| result + i  }
  end
end
