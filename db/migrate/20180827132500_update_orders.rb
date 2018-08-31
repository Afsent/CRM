class UpdateOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :fullName
    remove_column :orders, :nameArticle
  end
end
