class AddFirstNameToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :first_name, :string
  end
end
