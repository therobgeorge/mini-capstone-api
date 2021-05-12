class AddQuanitiyToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :quanity, :integer
  end
end
