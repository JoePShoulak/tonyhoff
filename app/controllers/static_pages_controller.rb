class StaticPagesController < ApplicationController
  def home
    @model_src = '/assets/photos/small/model.jpg'
    @quote_src = '/assets/quote.jpg'
  end

  def bio
    @youngpreston = '/assets/photos/small/young.jpg'
  end

  def music
    itunes_prefix     = 'https://itunes.apple.com/us/album/'
    
    accident_url      = itunes_prefix + 'accidental-love-letters-single/id485158289'
    forever_url       = itunes_prefix + 'forever-and-tomorrow-single/id517796378'
    green_url         = itunes_prefix + 'green-single/id510678840'
    recluse_url       = itunes_prefix + 'the-recluse-ep/id579311062'
    gone_url          = itunes_prefix + 'while-i-was-gone/id486808582'
    starting_url      = itunes_prefix + 'getting-good-at-starting-over/id728812168'
    
    accident_src      = '/assets/albums/accident.jpg'
    forever_src       = '/assets/albums/forever.jpg'
    green_src         = '/assets/albums/green.jpg'
    recluse_src       = '/assets/albums/recluse.jpg'
    gone_src          = '/assets/albums/gone.jpg'
    starting_src      = '/assets/albums/starting.jpg'
    
    accident_name     = 'Accidental Love Letters'
    forever_name      = 'Forever and Tomorrow'
    green_name        = 'Green'
    recluse_name      = 'The Recluse'
    gone_name         = 'While I Was Gone'
    starting_name     = 'Getting Good at Starting Over'
    
    @albums = [ [accident_url,  accident_src, accident_name ],
                [forever_url,   forever_src,  forever_name  ],
                [green_url,     green_src,    green_name    ],
                [recluse_url,   recluse_src,  recluse_name  ],
                [gone_url,      gone_src,     gone_name     ],
                [starting_url,  starting_src, starting_name ] ]
  end

  def videos
    @video_url = 'http://www.youtube.com/embed/videoseries?list=PLGy1un5MExBjNU6qEXjfb6TZT07F4kJ3n'
  end

  def gallery
    @photos = [ ['/assets/photos/small/blond.jpg',      '/assets/photos/large/blond.jpg'],
                ['/assets/photos/small/clap.jpg',       '/assets/photos/large/clap.jpg'],
                ['/assets/photos/small/color.jpg',      '/assets/photos/large/color.jpg'],
                ['/assets/photos/small/gatsby.jpg',     '/assets/photos/large/gatsby.jpg'],
                ['/assets/photos/small/laugh.jpg',      '/assets/photos/large/laugh.jpg'],
                ['/assets/photos/small/mpls.jpg',       '/assets/photos/large/mpls.jpg'],
                ['/assets/photos/small/smile.jpg',      '/assets/photos/large/smile.jpg'],
                ['/assets/photos/small/smile-2.jpg',    '/assets/photos/large/smile-2.jpg'] ]
  end

  def tour
  end

  def contact
    @pgund_email  = 'prestongundersonmusic@gmail.com'
    fb_image_link = '/assets/social/facebook.png'
    tw_image_link = '/assets/social/twitter.png'
    li_image_link = '/assets/social/linkedin.png'
    yt_image_link = '/assets/social/youtube.png'
    
    fb_ext_link   = 'https://www.facebook.com/pages/Preston-Gunderson/99040757537'
    tw_ext_link   = 'https://www.twitter.com/PGundersonmusic'
    li_ext_link   = 'http://www.linkedin.com/profile/view?id=258926105&trk=nav_responsive_tab_profile'
    yt_ext_link   = 'http://www.youtube.com/user/PrestoGundersonMusic'
    
    @links = [  [ fb_image_link, fb_ext_link ],
                [ tw_image_link, tw_ext_link ], 
                [ yt_image_link, yt_ext_link ], 
                [ li_image_link, li_ext_link ]  ]
  end
  
  def merch
  end

  def admin
  end
end
