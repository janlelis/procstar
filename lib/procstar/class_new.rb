require_relative '../procstar'

module Procstar
  module ClassNew
    def to_proc
      lambda{ |*args| self.new(*args) }
    end
  end
end

Class.send :include, Procstar::ClassNew
