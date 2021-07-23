class CreateProductCountForCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :products_count, :integer, default:0
  end
end
