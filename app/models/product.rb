class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  # validates :name, presence: true, uniqueness: true
  # validates :price, :numericality {greater than 0}
  # validates :description, length: {in: 10..500}
  
  
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
