require "social_buttons/version"
require "social_buttons/helper"

module SocialButtons
  module Rails
    class Engine < ::Rails::Engine
    end
  end
end

ActionView::Base.send :include, SocialButtons::Helper
