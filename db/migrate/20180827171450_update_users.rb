class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :faculty, :string
    add_column :users, :caf, :string
    add_column :users, :position, :string
    add_column :users, :tel_number, :string
  end
end
