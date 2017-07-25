---
layout: post
title: Popup Tweets
date: 2017-07-23 11:32:00
homepage: https://github.com/jekyller/PopupTweets
download: https://github.com/jekyller/PopupTweets/archive/gh-pages.zip
demo: https://jekyller.github.io/PopupTweets/
author: Jun Lu
thumbnail: popup-tweets.png
license: MIT License
license_link: https://github.com/jekyller/PopupTweets/blob/gh-pages/LICENSE
---



Popup tweets plugin for your personal website (Linkedin, facebook liked features)

- Put **poptweet.html** under the _includes folder of your Jekyll project.

- Get your own twitter publish code at *https://publish.twitter.com/*, for example, replace this code in **poptweet.html**

```
<a class="twitter-timeline" href="https://twitter.com/junlulocky">Tweets by junlulocky</a> 
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
```

- add css file to your own folder

```
/assets/css/junpopup.css
```
    
- Add the following code to your own website

```
include /poptweet.html 
```


