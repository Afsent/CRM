class FileUpload < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :file_contents, :string

  end
end
