class Api::V1::TurnipSellPricesController < ApplicationController
  before_action :find_turnip_sell_price, only: [:update, :show]
  def index
    @turnip_sell_prices = TurnipSellPrice.all
    render json: @turnip_sell_prices
  end

  def create 
    @turnipprice = @user.turnip_sell_prices.find_by(date: turnip_sell_price_params["date"].delete("Z"))
    if @turnipprice
      @turnipprice.update((turnip_sell_price_params["time"]+"_price") => turnip_sell_price_params["price"])
    else
      TurnipSellPrice.create(user_id: @user.id, date: turnip_sell_price_params["date"].delete("Z"), (turnip_sell_price_params["time"]+"_price") => turnip_sell_price_params["price"])
      @turnipprice = TurnipSellPrice.last
    end
    render json:  @turnipprice 
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
    params.permit(:price, :time, :date)
  end

  def find_turnip_sell_price
    @turnip_sell_price = TurnipSellPrice.find(params[:id])
  end
end
