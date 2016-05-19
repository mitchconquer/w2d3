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

  def my_transpose
    transposed = Array.new(self[0].length) { Array.new } unless self.empty?
    transposed ||= []
    self.each_with_index do |row, row_idx|
      row.each_with_index do |el, col_idx|
        transposed[col_idx][row_idx] = el
      end
    end
    transposed
  end

  def stock_picker
    max_diff = 0
    max_diff_indicies = []
    (self.count - 1).times do |i|
      self[(i + 1)..-1].each_with_index do |price, j|
        this_diff = price - self[i]
        if this_diff > max_diff
          max_diff = this_diff
          max_diff_indicies = [i, (j + i + 1)]
        end
      end
    end
    max_diff_indicies
  end



end
