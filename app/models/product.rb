class Product < ApplicationRecord
  # validates :name, presence: true, uniqueness: true
  # validates :price, :numericality {greater than 0}
  # validates :description, length: {in: 10..500}
  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg|gif)$}i, :message => "must have a valid file type", :multiline => true
  
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
