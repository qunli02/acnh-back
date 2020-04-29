class User < ApplicationRecord
  has_many :turnip_sell_prices
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
