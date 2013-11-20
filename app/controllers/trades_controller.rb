class TradesController < ApplicationController
  def index
    @items = Item.where(:user_id => current_user.id).sort_by { |item| item.trades.count * -1 }
  end

  def create
    trade = Trade.create(trade_params)
    redirect_to item_path(trade.target_item_id)
  end

  def trade_params
    params.require(:trade).permit(:target_item_id, :target_user_id).merge({
      :source_user_id => current_user.try(:id)
    })
  end
end
