require 'pry'

class CashRegister
  attr_accessor :total, :discount, :cash_register_with_discount, :title

   @@all = []

  def initialize(discount=0)
   @total = 0
   @discount = discount
  end

  def add_item(title, price, quantity=1)
    new_price = price * quantity
    @total = total + new_price
    @title = title
    @@all << self.title
  end

  def total
    @total
  end

  def apply_discount
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    if discount != 0
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    #binding.pry
    @@all
  end

  def void_last_transaction


  end

  def self.all
    @@all
  end
end
