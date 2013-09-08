class UserMailer < ActionMailer::Base
  default from: 'grift@grifter.io'

  def trade_email(trade)
    @user = trade.user
    @trade = trade
    @url = "/trades/#{trade.id}"

    puts "email: #{@user.email}"

    mail(to: @user.email, subject: 'Grift Request!')
  end
end
