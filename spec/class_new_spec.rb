require 'set'
require 'procstar/class_new'

describe Procstar::ClassNew do
  describe 'Class#to_proc' do
    it 'should create new instances of the class' do
      expect( [[1,2],[3,5,6,7,3]].map(&Set) ).to eq [Set[1,2], Set[5,6,7,3]]
    end
  end
end
