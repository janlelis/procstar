require 'set'
require 'procstar/hash_filter'

describe Procstar::HashFilter do
  describe 'Hash#to_proc' do
    it 'should run the proc given in the value for a key in the hash' do
      expect( [1,2,3,4].map(&{
        4 => :to_s,
        # 3 => [:to_s, 2]  # "11" =>  if array2proc is used
        2 => lambda {|e| e + 1000}
      }) ).to eq [1, 1002, 3, "4"]
    end
  end
end
