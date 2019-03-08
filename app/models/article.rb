class Article < ApplicationRecord
  belongs_to :profile
  mount_uploader :article_photo, PhotoUploader
end
