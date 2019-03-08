class Donation < ApplicationRecord
  belongs_to :profile
  monetize :price_cents
end
