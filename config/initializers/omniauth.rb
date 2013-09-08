SCOPE = 'email,read_stream'
FACEBOOK_KEY = '386792551448289'
FACEBOOK_SECRET = '4cd2cdf7f8fe4060fd165ff768dc3d98'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_KEY, FACEBOOK_SECRET, :scope => SCOPE
end