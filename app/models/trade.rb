class Trade < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  after_save :send_email

  validates :status, :inclusion => %w(POSTED ACCEPTED COMPLETED CANCELLED)


  def send_email
    UserMailer.trade_email(self).deliver
  end
end
