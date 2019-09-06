require 'pry'

class CashRegister 
  
  attr_accessor :emp_discount, :total, :cart, :last

  
  def initialize(emp_discount=0)
    @cart = []
    @last = []
    @total = 0
    @emp_discount = emp_discount
  end
  
  def discount 
    @emp_discount 
  end
  
  def add_item(item, price, quantity=1) 
    @total += (price * quantity) 
    count = quantity 
      while count > 0 
        @cart << item  
        count -= 1 
      end 
      @last[0] = item 
      @last[1] = price
      
  end
  
  def apply_discount
  #  binding.pry
    if @emp_discount == 0 
      "There is no discount to apply."
    else
      @total -= ((@total * @emp_discount) / 100)
      "After the discount, the total comes to $#{@total}."
    end
  end
    
  def items 
    @cart 
  end
      
  def void_last_transaction 
      @total -= @last[1]
  end
  
end
