(function() {
    function async_load(){
      js_async_load('//assets.pinterest.com/js/pinit.js');
      js_async_load('//platform.twitter.com/widgets.js', 'twitter-wjs');
      js_async_load('https://apis.google.com/js/plusone.js');
    }

    function js_async_load(src, id){
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        if(id) s.id = id;
        s.src = src;
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
    }
    
    if (window.attachEvent)
        window.attachEvent('onload', async_load);
    else
        window.addEventListener('load', async_load, false);
})();