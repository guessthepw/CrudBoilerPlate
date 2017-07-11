User.delete_all
# Post.delete_all
# Comment.delete_all

User.create!(email: "aa", password: "password")

10.times do
  User.create!(email: Faker::Internet.email, password: "password")
end

#
# 10.times do
#   Post.create!(title: Faker::Job.title, body: Faker::Job.field, user_id: User.all.sample.id)
# end
#
# 30.times do
#   Comment.create!(comment: Faker::Job.key_skill, user_id: User.all.sample.id, post_id: Post.all.sample.id)
# end
