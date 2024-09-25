class TemperatureConverter
  def self.celsius_to_fahrenheit(celsius)
    (celsius * 9.0 / 5) + 32
  end

  def self.fahrenheit_to_celsius(fahrenheit)
    (fahrenheit - 32) * 5.0 / 9
  end
end

puts "#{25}°C = #{TemperatureConverter.celsius_to_fahrenheit(25)}°F"
puts "#{77}°F = #{TemperatureConverter.fahrenheit_to_celsius(77)}°C"
