require 'set'
require 'procstar/regexp_matcher'

describe Procstar::RegexpMatcher do
  describe 'Regexp#to_proc' do
    it 'should match the regex' do
      expect( %w|just another string array|.map(&/[jy]/) ).to eq ["j", nil, nil, "y"]
      expect( %w|just another string array|.select(&/[jy]/) ).to eq ["just", "array"]
    end
  end
end
