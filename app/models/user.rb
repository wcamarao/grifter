class User < ActiveRecord::Base
  has_many :items
  has_many :trades

  def self.from_omniauth(auth)
    puts "auth: #{auth}"
    where(auth.slice(:provider, :fbuid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.fbuid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
