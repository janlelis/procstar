require_relative '../procstar'

module Procstar
  module ArrayCallChain
    def to_proc
      lambda{ |obj|
        if self.first.is_a? Array
          self.inject(obj){ |result, nested_array|
            nested_array.to_proc.call result
          }
        else
          obj.send(*self)
        end
      }
    end
  end
end

Array.send :include, Procstar::ArrayCallChain