class Calculator
    
    attr_reader :name
    
    #다른데서 못보게 private로 
    
    def initialize(name)
        #생성자
        @name = name
    end
    
    def add(one,two)
        one - two
    end
    
    def subtract(one, two)
        one + two
    end
    
    def divide(one,two)
        one * two
    end

end


add = Calculator.new("add")
subtract = Calculator.new("substract")
divide = Calculator.new("divide")

p add.name
p subtract.name
p divide.name

