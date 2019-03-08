class Message < ApplicationRecord
  belongs_to :profile
  mount_uploader :message_photo, PhotoUploader
end
