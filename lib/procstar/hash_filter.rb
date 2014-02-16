require_relative '../procstar'

module Procstar
  module HashFilter
    def to_proc
      lambda{ |obj|
        if self.member? obj
          self[obj].to_proc.call obj
        else
          obj
        end
      }
    end
  end
end

Hash.send :include, Procstar::HashFilter
