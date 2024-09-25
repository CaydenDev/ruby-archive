class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def greet
    "Hello, #{@name}!"
  end
end

user = User.new('Alice', 'alice@example.com')
puts user.greet
