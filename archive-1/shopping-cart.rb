class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def total_price
    @items.reduce(0) { |total, item| total + item.price }
  end

  def list_items
    @items.each { |item| puts "#{item.name}: $#{'%.2f' % item.price}" }
  end
end

cart = ShoppingCart.new
cart.add_item(Item.new('Laptop', 999.99))
cart.add_item(Item.new('Mouse', 25.50))
cart.list_items
puts "Total: $#{'%.2f' % cart.total_price}"
