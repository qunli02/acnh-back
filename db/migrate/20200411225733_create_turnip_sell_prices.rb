class CreateTurnipSellPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :turnip_sell_prices do |t|

      t.integer :user_id
      t.string :date
      t.integer :morning_price
      t.integer :afternoon_price

      t.timestamps
    end
  end
end
