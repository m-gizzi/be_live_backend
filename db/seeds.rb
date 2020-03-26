# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rsvp.all.delete_all
EventsTag.all.delete_all
Tag.all.delete_all
Event.all.delete_all
User.all.delete_all

admin = User.create(name: 'admin', email: 'admin@belive.com', img_url: '')
user1 = User.create(name: 'Matthew', email: 'matthew@belive.com', img_url: '../assets/59755994_10157026264509799_1481350897748410368_o.jpg')
user2 = User.create(name: 'Andy', email: 'andy@belive.com', img_url: '../assets/T02MD9XTF-UQJTM04TX-de8274a65d8e-512.jpeg')

event1 = Event.create(title: "New York Metropolitan Opera Tour", start_date: DateTime.strptime('03/30/2020T19:30', '%m/%d/%YT%H:%M'), end_date: DateTime.strptime('03/31/2020', '%m/%d/%Y'), ongoing: false, description: "Join us as we all shout fuck you together, but online.", private: false, url: "www.facebook.com", img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrTDhOIlFbP2CK2SqjG7w9QL0uB7S2iHau3talnbpizQrX9DD_', host_id: admin.id)
event2 = Event.create(title: "Fuck off Coronavirus 2", start_date: DateTime.strptime('04/01/2020', '%m/%d/%Y'), end_date: DateTime.strptime('04/10/2020', '%m/%d/%Y'), ongoing: false, description: "Join us as we all shout fuck you together, but online.", private: false, url: "www.facebook.com", img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrTDhOIlFbP2CK2SqjG7w9QL0uB7S2iHau3talnbpizQrX9DD_', host_id: admin.id)
event3 = Event.create(title: "Fuck off Coronavirus 3", start_date: DateTime.strptime('04/06/2020', '%m/%d/%Y'), end_date: DateTime.strptime('04/20/2020', '%m/%d/%Y'), ongoing: false, description: "Join us as we all shout fuck you together, but online.", private: false, url: "www.facebook.com", img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrTDhOIlFbP2CK2SqjG7w9QL0uB7S2iHau3talnbpizQrX9DD_', host_id: admin.id)

tag1 = Tag.create(tag_name: "Party")
tag2 = Tag.create(tag_name: "Music")
tag3 = Tag.create(tag_name: "Dance")

EventsTag.create(event_id: event1.id, tag_id: tag1.id)
EventsTag.create(event_id: event2.id, tag_id: tag1.id)
EventsTag.create(event_id: event1.id, tag_id: tag2.id)

Rsvp.create(event_id: event1.id, user_id: user1.id)
Rsvp.create(event_id: event2.id, user_id: user2.id)
Rsvp.create(event_id: event1.id, user_id: user2.id)