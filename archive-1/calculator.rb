module Calculator
  def self.add(a, b)
    a + b
  end

  def self.subtract(a, b)
    a - b
  end

  def self.multiply(a, b)
    a * b
  end

  def self.divide(a, b)
    return 'Cannot divide by zero' if b.zero?
    a.to_f / b
  end
end


puts Calculator.add(5, 3)       
puts Calculator.subtract(5, 3)  
puts Calculator.multiply(5, 3)  
puts Calculator.divide(5, 0)    
