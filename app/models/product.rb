class Product < ApplicationRecord
  def is_discounted?
    if price < 30
      true
    else
      false  
    end
  end

  def tax
    tax = price * 0.09
    tax.round(2)
  end

  def total
    tax = price * 0.09
    price + tax.round(2)
  end
end
