require 'rspec'
require 'tdd_array'

describe Array do
  describe '#my_uniq' do
    let(:test_array) { [1, 2, 1, 3, 3] }

    it 'returns the unique elements in the order they first appeared' do
      expect(test_array.my_uniq).to eq([1, 2, 3])
    end

    it 'does not modify the original array' do
      test_array.my_uniq
      expect(test_array).to eq([1, 2, 1, 3, 3])
    end

    it 'handles an empty array'
  end

  describe '#two_sum' do
    let(:test_array) { [-1, 0, 2, -2, 1] }
    let(:no_pairs_array) { [1, 2, 3] }

    it 'returns the indices of element pairs that sum to zero' do
      expect(test_array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'returns the pairs with the smaller index first' do
      expect(test_array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'returns an empty array if no pairs are found' do
      expect(no_pairs_array.two_sum).to eq([])
    end

    it 'does not modify the original array' do
      test_array.two_sum
      expect(test_array).to eq([-1, 0, 2, -2, 1])
    end

  end

  describe '#my_transpose' do
    let(:test_array) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
    let(:rectangular_array) {[[0, 1], [3, 4], [6, 7]]}

    it 'transposes rows with columns' do
      expect(test_array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end

    it 'does not modify the original array' do
      test_array.my_transpose
      expect(test_array).to eq([[0, 1, 2], [3, 4, 5], [6, 7, 8]])
    end

    # it 'works on square matrices'
    it 'works on rectangular matrices' do
      expect(rectangular_array.my_transpose).to eq([[0, 3, 6], [1, 4, 7]])
    end

    it 'works on an empty array' do
      expect([].my_transpose).to eq([])
    end
  end

  describe '#stock_picker' do
    let(:stock_prices) { [2, 3, 5, 1, 9, 4, 10, 6, 8] }
    let(:loser) { [10, 8, 6, 5, 4, 1] }
    let(:static) { [5, 5, 5, 5]}

    it 'should output the indices of the most profitable buy/sell day pair' do
      expect(stock_prices.stock_picker).to eq([3, 6])
    end

    it 'should not modify the original array' do
      stock_prices.stock_picker
      expect(stock_prices).to eq([2, 3, 5, 1, 9, 4, 10, 6, 8])
    end

    it 'should return an empty array if all transactions result in a loss' do
      expect(loser.stock_picker).to eq([])
    end

    it 'should return an empty array if the stock price never changes' do
      expect(static.stock_picker).to eq([])
    end

  end

end
