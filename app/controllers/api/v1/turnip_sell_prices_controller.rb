class Api::V1::TurnipSellPricesController < ApplicationController
  before_action :find_turnip_sell_price, only: [:update, :show]
  def index
    @turnip_sell_prices = TurnipSellPrice.all
    render json: @turnip_sell_prices
  end

  def update
    @turnip_sell_price.update(turnip_sell_price_params)
    if @turnip_sell_price.save
      render json: @turnip_sell_price, status: :accepted
    else
      render json: { errors: @turnip_sell_price.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @turnip_sell_price
  end

  private

  def turnip_sell_price_params
    params.permit(:id, :user_id, :morning_price, :afternoon_price)
  end

  def find_turnip_sell_price
    @turnip_sell_price = TurnipSellPrice.find(params[:id])
  end
end
