class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :fbuid)).first_or_initialize.tap do |user|

      user.name = auth.info.name
      user.email = auth.info.email
      user.active = true

      user.provider = auth.provider
      user.fbuid = auth.uid
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)

      user.save!
    end
  end
end
