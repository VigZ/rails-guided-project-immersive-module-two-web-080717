# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
user1 = User.create(username: "Tomtom", email: "tomtom@tomtom.com")
user4 = User.create(email: "john@doe.com" , username: "JohnDoe" , password: "yolo")
user5 = User.create(email: "jane@doe.com" , username: "JaneDoe" , password: "yas")
user6 = User.create(email: "kyle@doe.com" , username: "KyleDoe" , password: "sourcream")
user7 = User.create(email: "josh@doe.com" , username: "DatAssDoe" , password: "tomato")
user8 = User.create(email: "thedoe@joe.com" , username: "ThaDoeJoe" , password: "taco")
user9 = User.create(email: "mike@mac.com" , username: "MikeMac" , password: "yolotaco")
user10 = User.create(email: "matthias@matt.com" , username: "Croakus" , password: "yolodolo")


#Pictures

picture1 = Picture.create(image_url: "http://cdn3-www.dogtime.com/assets/uploads/gallery/goldador-dog-breed-pictures/puppy-1.jpg", title: "Cute Puppy", user_id: 3)
picture2 = Picture.create(image_url: "https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Shake-shiver-and-tremble-Why-dogs-do-it.jpg?itok=yvOUgQeL", title: "Another Cute Puppy", user_id: 4)
picture3 = Picture.create(image_url: "https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Common-dog-behaviors-explained.jpg?itok=FSzwbBoi", title: "Confused Happy Puppy", user_id: 5)
picture4 = Picture.create(image_url: "https://www.rover.com/blog/wp-content/uploads/2015/05/dog-candy-junk-food-599x340.jpg", title: "Pupcake", user_id: 6)
picture5 = Picture.create(image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2016/01/bear-dogs-310__605.jpg", title: "Panda Puppy", user_id: 7)
picture6 = Picture.create(image_url: "http://cdn1-www.dogtime.com/assets/uploads/2011/04/file_2153_column_popular-dog-names.jpg", title: "Group of Doges", user_id: 8)
picture7 = Picture.create(image_url: "https://i.ytimg.com/vi/4OLJe8iMLg4/hqdefault.jpg", title: "Sad Doge", user_id: 9)
picture8 = Picture.create(image_url: "https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA4MS80MTIvb3JpZ2luYWwvc2xlZXBpbmctZnJlbmNoLWJ1bGxkb2cuanBn", title: "OMG I AM DEAD S’CUTE", user_id: 10)


#Tags

happy= Tag.create(name: "happy")
sad= Tag.create(name: "sad")
angry= Tag.create(name: "angry")
fml= Tag.create(name: "fml")
lol= Tag.create(name: "lol")
smh= Tag.create(name: "smh")
lit= Tag.create(name: "lit")
goat= Tag.create(name: "goat")
mustard_cat= Tag.create(name: "mustardcat")
crazy= Tag.create(name: "crazy")
beautiful= Tag.create(name: "beautiful")
poop= Tag.create(name: "poop")
