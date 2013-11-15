class TradesController < ApplicationController
  def create
    Trade.create!(trade_params)
  end

  def trade_params
    params.require(:trade).permit(:target_item_id, :target_user_id).merge({
      :source_user_id => current_user.try(:id)
    })
  end
end
