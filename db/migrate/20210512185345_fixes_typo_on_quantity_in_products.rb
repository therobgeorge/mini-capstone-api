class FixesTypoOnQuantityInProducts < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :quanity, :quantity
  end
end
