Rails.application.config.middleware.use OmniAuth::Builder do
    
    #app_id = ENV['fb_app_id']
    #secret = ENV['fb_secret']
    #provider :facebook, app_id, secret, scope: 'publish_actions',
     #           :image_size => {width: 500, height: 500}

 provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  #:callback_path => '/sessions/create', 
  :scope => 'publish_actions',
  :image_size => {width: 500, height: 500}
end



