class Order < ApplicationRecord
  belongs_to :user
  mount_uploader :file_contents, ArticleUploader
end
