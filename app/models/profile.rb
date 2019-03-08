class Profile < ApplicationRecord
  belongs_to :user
  has_many :articles, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :meetings, dependent: :destroy
  has_many :messages, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?


  def full_address
    "#{address} #{post_code} #{city}"
  end

end

