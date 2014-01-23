class AddFullnameToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :fullname, :string
  end
end
