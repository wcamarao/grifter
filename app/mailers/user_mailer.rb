class UserMailer < ActionMailer::Base
  default from: 'grift@grifter.io'

  def trade_email(trade)
    @from_user = trade.user
    @to_user = trade.item.user
    @trade = trade
    @url = "/trades/#{trade.id}"

    mail(to: @to_user.email, subject: 'Grift Request!')
  end
end
