class AddProductsCountToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :products_count, :integer
    Category.reset_column_information
    Category.all.each do |p|
      Category.update_counters p.id, :products_count => p.products.length
    end
  end
end
