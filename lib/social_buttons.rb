require "social_buttons/version"

module SocialButtons
  
end

ActionView::Base.send :include, SocialShareButton::Helper
