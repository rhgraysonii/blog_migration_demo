1000.times do |time|
  post = Post.new(body:Faker::Lorem(20), title:"post_#{time}")
  post.save!
end

