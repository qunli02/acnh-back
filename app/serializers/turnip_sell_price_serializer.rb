class TurnipSellPriceSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :date, :morning_price, :afternoon_price
end
