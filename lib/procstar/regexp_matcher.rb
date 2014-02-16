require_relative '../procstar'

module Procstar
  module RegexpMatcher
    def to_proc
      lambda{ |e| e.to_s[self] }
    end
  end
end

Regexp.send :include, Procstar::RegexpMatcher
