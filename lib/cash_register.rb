class CashRegister 
  
  attr_accessor :emp_discount, :total
  
  def initialize(emp_discount=0)
    @total = 0
    @emp_discount = emp_discount
  end
  
  def discount 
    @emp_discount 
  end
  
  def add_item(item, price, quantity=1) 
    @total += (price * quantity) 
  end
    
  
end
