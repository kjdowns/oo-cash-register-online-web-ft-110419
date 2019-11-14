require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :total_minus_last
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total_minus_last = @total
    @total = @total += (price * quantity)
  end
  
  def apply_discount
    discount = @total *= (@discount.to_f * 0.01)
    binding.pry
    @total -= discount 
  end
  
end