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

    it 'works on square matrices'
    it 'works on rectangular matrices' do
      expect(rectangular_array.my_transpose).to eq([[0, 3, 6], [1, 4, 7]])
    end

    it 'works on an empty array' do
      expect([].my_transpose).to eq([])
    end

  end
end
