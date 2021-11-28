get '/' do
  
  @finstagram_posts = FinstagramPost.order(created_at: :desc)
  erb(:index)

end

# get '/' do
#   File.read(File.join('app/views', 'index.html'))
# end

# def humanized_time_ago(minute_num)
#     if minute_num >= 60
#       "#{minute_num / 60} hours ago"
#     else
#         "#{minute_num} minutes ago"
#     end
# end

  # @finstagram_post_stretch = { 
  #   username: "mikasa_fan",
  #   avatar_url: "/images/user_profile_mikasa.jfif",
  #   photo_url: "/images/volleyball_stretch.jfif",
  #   humanized_time_ago: humanized_time_ago(15),
  #   like_count: 1,
  #   comment_count: 1,
  #   comments: [{
  #       username: "mikasa_fan",
  #       text: "Gotta make sure to always stretch...don't want to pull a muscle!"
  #   }]
  # } 

  # @finstagram_post_spike = { 
  #   username: "spike_nation",
  #   avatar_url: "/images/user_profile_net.jfif",
  #   photo_url: "/images/volleyball_spike.jfif",
  #   humanized_time_ago: humanized_time_ago(180),
  #   like_count: 2,
  #   comment_count: 1,
  #   comments: [{
  #       username: "spike_nation",
  #       text: "That form...that height...no one is blocking that!"
  #   }]
  # }

  # @finstagram_post_gif = { 
  #   username: "vball_gif_master",
  #   avatar_url: "/images/user_profile_shadow.png",
  #   photo_url: "https://giphy.com/embed/eJ9igIFoZcPejuVcLY",
  #   humanized_time_ago: humanized_time_ago(420),
  #   like_count: 3,
  #   comment_count: 1,
  #   comments: [{
  #       username: "vball_gif_master",
  #       text: "What a dig!"
  #   }]
  # } 

  # @finstagram_posts = [@finstagram_post_stretch, @finstagram_post_spike, @finstagram_post_gif]