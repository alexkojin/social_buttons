module SocialButtons
  module Helper
    # Pinterest button
    # http://pinterest.com/about/goodies/
    def pin_it_button(options={})
      params = options.slice(:url, :media, :description)
      params[:url] ||= request.url
      img = tag :img, :src => "//assets.pinterest.com/images/PinExt.png", :title => "Pin It", :border => "0" 
      content_tag :a, img, "href" => "http://pinterest.com/pin/create/button/?#{params.to_query}", 
                                "class" => "pin-it-button",
                                "count-layout" => "none"
    end

    # Facebook like button
    # http://developers.facebook.com/docs/reference/plugins/like/
    def fb_like_button(options={})
      href = options[:url] || request.url
      params = options.slice(:layout, :send, :width, :height, :show_faces, :action, :colorscheme, :font, :appId)

      params = {
        :href => href,
        :layout => 'button_count',
        :send => false,
        :width => 450,
        :height => 21,
        :show_faces => false,
        :action => 'like', 
        :colorscheme => 'light',
        :font => 'verdana'
      }.merge(params)

      style = "border:none; overflow:hidden; width:#{params[:width]}px; height:#{params[:height]}px;"

      content_tag :iframe, '', :src => "//www.facebook.com/plugins/like.php?#{params.to_query}",
                               :scrolling => 'no',
                               :frameborder => 0,
                               :allowTransparency => true,
                               :style => style
    end

    # Twitter button
    # https://twitter.com/about/resources/buttons
    # Options: url, via, lang, size, related, hashtags, count
    def twitter_share_button(options={})
      options = Hash[options.map {|k, v| ["data-#{k}", v] }]
      options.merge!({:href => 'https://twitter.com/share', :class => 'twitter-share-button'})

      content_tag :a, 'Tweet', options
    end 

    # Google +1 button
    # http://www.google.com/webmasters/+1/button/
    def google_plus_button(options={})
      href = options[:url] || request.url
      options = Hash[options.map {|k, v| ["data-#{k}", v] }]
      options.merge!({:class => 'g-plusone', 'data-href' => href})

      content_tag :div, '', options
    end
  end
end