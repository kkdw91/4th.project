require 'test/unit' #테스트를 하기 위한 코드
require_relative 'calculator' #rb 안붙여줘도된다.

class CalculatorTest <Test::Unit::TestCase
   def setup
     @calc = Calculator.new('test')
   end
   def test_calculator
        assert_equal('7',@calc.add(2,5))
        assert_equal('3',@calc.substract(5,2))    
   end
end
        