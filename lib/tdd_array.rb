class Array
  def my_uniq
    new_array = []
    self.each do |el|
      new_array << el unless new_array.include?(el)
    end
    new_array
  end

  def two_sum
    pairs = []
    self.each_with_index do |start_el, idx1|
      next if idx1 >= self.count
      self[(idx1 + 1)..-1].each_with_index do |other_el, idx2|
        pairs << [idx1, (idx2 + idx1 + 1)] if (start_el + other_el == 0)
      end
    end
    pairs
  end

end
