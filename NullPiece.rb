require 'singleton'

class NullPiece
  include Singleton

def initialize
  
end

def present?
    false
end

def to_s
  "   "
end

end
