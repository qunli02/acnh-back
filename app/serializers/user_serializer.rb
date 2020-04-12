class UserSerializer < ActiveModel::Serializer
  has_many :turnip_sell_prices
  attributes :id, :name
end
