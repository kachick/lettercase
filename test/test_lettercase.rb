$VERBOSE = true
require_relative 'test_helper'

class TestLetterCase < Test::Unit::TestCase
  class Sth
    include Structable
    
    member :foo
  end
  
  def test_freeze
    sth = Sth.new
    sth.freeze
    
    assert_raises RuntimeError do
     sth.foo = 8
    end
   
    assert_equal true, sth.frozen?
  end
end
