Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['CLIENT_ID'], ENV['CLIENT_SECRET'], {
  scope: ['https://www.googleapis.com/auth/plus.me', 'profile', 'email'],
  access_type: 'offline'}
end