users = [
  { username: "mikasa_fan", avatar_url: "/images/user_profile_mikasa.jfif", email: "mikasa_fan@gmail.com", password: "abcd" },
  { username: "spike_nation", avatar_url: "/images/user_profile_net.jfif", email: "spike_nation@gmail.com", password: "abcd" },
  { username: "vball_gif_master", avatar_url: "/images/user_profile_shadow.png", email: "vball_gif_master@gmail.com", password: "abcd" }
]

finstagram_posts = [
  { photo_url: "/images/volleyball_stretch.jfif"},
  { photo_url: "/images/volleyball_spike.jfif"},
  { photo_url: "https://media.giphy.com/media/eJ9igIFoZcPejuVcLY/giphy.gif"}
]

puts "Seeding database..."

# create Users and FinstagramPosts
users.each_with_index do |user, index|
  # create new User
  user_record = User.create(user)
  # get a finstagram_post
  finstagram_post = finstagram_posts[index]
  # modify finstagram_post's user_id from created record
  finstagram_post[:user_id] = user_record.id
  # create new FinstagramPost
  FinstagramPost.create(finstagram_post)
end

puts "Seeding complete."