require 'procstar/array_call_chain'

describe Procstar::ArrayCallChain do
  describe 'Array#to_proc' do
    it 'should call the method of the first symbol, using the remaining elements as paramaters' do
      expect( [1,2,3,4].map(&[:to_s, 2]) ).to eq ["1", "10", "11", "100"]
    end

    it "should convert each element to a proc and chain it, if the first parameter is an array" do
      expect( [1,2,3,4].map( &[[:*,2],[:+,4]]) ).to eq [1,2,3,4].map{|i| i*2 + 4 }
    end
  end
end