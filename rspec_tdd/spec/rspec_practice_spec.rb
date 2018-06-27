require 'rspec_practice'

RSpec.describe Array do
  describe '#uniq' do
    it 'removes duplicates from an array' do
      expect([1,2,1,3,3].uniq).to eq([1,2,3])
    end
    
    it 'should not modify the original array' do
      a = [1,2,1,3,3]
      a_copy = a.dup
      a.uniq
      expect(a).to eq(a_copy)
    end
    
  end
  
  describe '#two_sum' do
    it 'find pair of indicies with element that sums to zero' do
      expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
    end
    
    it 'returns an array of pairs that is sorted dictionary-wise' do
      results = [-1,0,2,-2,1].two_sum
      expect(results).to eq(results.sort)
    end
  end
end

describe 'my_transpose' do
  it 'raises an error when not passed an array' do
    expect{my_transpose("string")}.to raise_error(ArgumentError)
  end
  it 'converts rows into columns, vice-versa' do
    array = [[0,1,2],[3,4,5],[6,7,8]]
    expect(my_transpose(array)).to eq([[0,3,6],[1,4,7],[2,5,8]])
  end
end

describe '#stock_picker' do
  it 'raises an error when not passed an array' do
    expect{stock_picker("string")}.to raise_error(ArgumentError)
  end
  
  it 'returns the most profitable pair of days' do
    expect(stock_picker([40,10,20,30])).to eq([1,3])
  end
end