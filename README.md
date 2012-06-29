# SocialButtons

Helper methods for to easy integrate social buttons 'Pin It', 'Like', 'Tweet it', 'G+'

## Installation

Add this line to your application's Gemfile:

    gem 'social_buttons'

And then execute:

    $ bundle

## Usage

In application.js add:

    //= require social_buttons

In view:

    <%= pin_it_button url: @product.url, media: @product.large_image_url, description: @product.description %>
    
    <%= fb_like_button %>

    <%= twitter_share_button count: 'none' %>

    <%= google_plus_button size: 'medium', annotation: 'none' %>

More details you can find in the [code][1] 

  [1]: https://github.com/alexkojin/social_buttons/blob/master/lib/social_buttons/helper.rb