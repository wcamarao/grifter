class Trade < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  validates :status, :inclusion => %w(POSTED ACCEPTED COMPLETED CANCELLED)
end
