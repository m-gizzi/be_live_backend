# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.all.destroy_all
Event.all.destroy_all
User.all.destroy_all

admin = User.create(name: 'admin', email: 'admin@belive.com', img_url: '')

Event.create(title: "Fuck off Coronavirus", start_date: DateTime.strptime('03/30/2020', '%m/%d/%Y'), end_date: DateTime.strptime('03/31/2020', '%m/%d/%Y'), ongoing: false, description: "Join us as we all shout fuck you together, but online.", private: false, url: "www.facebook.com", img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrTDhOIlFbP2CK2SqjG7w9QL0uB7S2iHau3talnbpizQrX9DD_', host_id: admin.id)
Event.create(title: "Fuck off Coronavirus 2", start_date: DateTime.strptime('04/01/2020', '%m/%d/%Y'), end_date: DateTime.strptime('04/10/2020', '%m/%d/%Y'), ongoing: false, description: "Join us as we all shout fuck you together, but online.", private: false, url: "www.facebook.com", img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrTDhOIlFbP2CK2SqjG7w9QL0uB7S2iHau3talnbpizQrX9DD_', host_id: admin.id)
Event.create(title: "Fuck off Coronavirus 3", start_date: DateTime.strptime('04/06/2020', '%m/%d/%Y'), end_date: DateTime.strptime('04/20/2020', '%m/%d/%Y'), ongoing: false, description: "Join us as we all shout fuck you together, but online.", private: false, url: "www.facebook.com", img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrTDhOIlFbP2CK2SqjG7w9QL0uB7S2iHau3talnbpizQrX9DD_', host_id: admin.id)

Tag.create(tag_name: "Party")