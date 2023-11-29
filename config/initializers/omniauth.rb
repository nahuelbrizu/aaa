
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?

  # Facebook
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']

  # Twitter
  # provider :twitter, ENV['TWITTER_API_KEY'], ENV['TWITTER_API_SECRET']

  # Google
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']  ,  {
    scope: 'email, profile', #"This will allow us to get the user's email address and profile picture.
        prompt: 'select_account', #-- This will allow the user to select which account they want to login with.
        image_aspect_ratio: 'square',# -- This will make sure that the profile picture is a square.
        image_size: 50,# -- This will make sure that the profile picture is 50x50 pixels.
    }

  # Add other providers here as needed
end
