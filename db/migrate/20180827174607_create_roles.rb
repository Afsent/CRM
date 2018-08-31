class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.references :user, foreign_key: true

      t.boolean :author, default: true
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
