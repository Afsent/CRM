class Roles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :user_id

      t.boolean :author
      t.boolean :admin
      t.boolean :chef_moderator
      t.boolean :moderator
      t.boolean :analyst
      t.boolean :head
      t.boolean :consultant
      t.boolean :director
      t.boolean :editor
      t.boolean :chef_translator
      t.boolean :translator


      t.timestamps
    end
  end
end
