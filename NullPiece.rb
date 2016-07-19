require 'singleton'

class NullPiece
  include Singleton
  attr_reader :color

def initialize
  @color = :white
end

def present?
    false
end

def to_s
  "   "
end

end
