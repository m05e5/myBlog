# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  User.create(name: "Gustave John Doe#{i}", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Oqk6CV4a1DSvkFJxOUjRoKuZ7pE-Ri7AkA&usqp=CAU", bio: "i am user #{i}")
end

Post.create(
  title: "Hello world", 
  text: "Lorem ipsuque temporm harum veritatis nostrum molestias repudiandae, ", 
  user_id: 3)

Post.create(
  title: "The cat and the mouse", 
  text: "Lorem ipsuque temporm harum veritatis nostrum molestias repudiandae, ", 
  user_id: 2)

 Post.create(title: "The cat and the mouse", text: "...", user_id: 2)
 Post.create(title: "my hero academia", text: "...", user_id: 2)
 Post.create(title: "naruto shipuden", text: "...", user_id: 1)
 Post.create(title: "The lion king", text: "...", user_id: 1)
 Post.create(title: "demon slayer", text: "...", user_id: 1)
 Post.create(title: "Ao haru ride", text: "...", user_id: 2)
 Post.create(title: "my little monster", text: "...", user_id: 3)

Like.create(user_id: 1, post_id: 1)
Like.create(user_id: 1, post_id: 2)

Comment.create(text: 'hello world1', user_id: 1, post_id: 2)
Comment.create(text: 'hello world2', user_id: 2, post_id: 2)
Comment.create(text: 'hello world3', user_id: 3, post_id: 2)
Comment.create(text: 'hello world4', user_id: 4, post_id: 1)
Comment.create(text: 'hello world5', user_id: 1, post_id: 1)
Comment.create(text: 'hello world6', user_id: 1, post_id: 1)
Comment.create(text: 'hello world7', user_id: 5, post_id: 3)
Comment.create(text: 'hello world8', user_id: 1, post_id: 3)
 
