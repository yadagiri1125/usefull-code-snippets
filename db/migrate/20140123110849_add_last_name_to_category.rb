class AddLastNameToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :last_name, :string
  end
end
