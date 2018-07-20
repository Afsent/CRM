class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    change_table :orders do |t|
      t.text :full_name
      t.string :article_name
      t.text :annotation
      t.string :key_words

      t.string :filename
      t.string :content_type
      t.binary :file_contents

      t.string :phone
      t.text :comment

      t.references :user, foreign_key: true

    end
  end
end
