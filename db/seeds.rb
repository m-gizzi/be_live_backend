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

event1 = Event.create(title: "New York Metropolitan Opera Performances", start_date: DateTime.strptime('03/30/2020T19:30+00:00', '%m/%d/%YT%H:%M%z'), end_date: DateTime.strptime('04/03/2020T22:30+00:00', '%m/%d/%YT%H:%M%z'), ongoing: false, description: "Join us for a different performance each night beginning at 8:30 EST. Each recording will be available for 16 hours after its premiere", private: false, url: "www.metopera.com/3fsd3arsd3", img_url: 'https://www.iu.edu/~images/dams/wpkux4l3fg_actual.jpg', host_id: admin.id)
event2 = Event.create(title: "Ra Ra Riot Virtual Show", start_date: DateTime.strptime('03/31/2020T20:30+00:00', '%m/%d/%YT%H:%M%z'), end_date: DateTime.strptime('03/31/2020T22:30+00:00', '%m/%d/%YT%H:%M%z'), ongoing: false, description: "Live from NPR studios, be a part of the virtual audience for free!", private: false, url: "www.livenation.com/34343445tsf", img_url: 'https://a3-images.myspacecdn.com/images04/8/a2ec420740ea43cbba9491a0b66514cb/600x600.jpg', host_id: user2.id)
event3 = Event.create(title: "Silent Dance Party", start_date: DateTime.strptime('04/05/2020T23:59+00:00', '%m/%d/%YT%H:%M%z'), end_date: DateTime.strptime('03/30/2020T22:30+00:00', '%m/%d/%YT%H:%M%z'), ongoing: true, description: "Choose from one of three playlists created by guest DJs, available exclusively for this event. Make sure to wear headphones!", private: true, url: "www.spotify.com/events/4544343", img_url: 'https://cms.qz.com/wp-content/uploads/2017/01/firas-nasr.jpg?quality=75&strip=all&w=900&h=900&crop=1', host_id: user1.id)
event4 = Event.create(title: "Barbara Kruger: Artist Studio Tour Series", start_date: DateTime.strptime('03/30/2020T19:30+00:00', '%m/%d/%YT%H:%M%z'), end_date: DateTime.strptime('03/30/2020T22:30+00:00', '%m/%d/%YT%H:%M%z'), ongoing: false, description: "an intimate tour of Kruger's home studio, hosted by the artist herself", private: false, url: "www.facebook.com", img_url: 'https://barnebys.imgix.net/https%3A%2F%2Fcatalogue.swanngalleries.com%2Ffull%2F234%2F753234.jpg?auto=format%2Ccompress&crop=0&cs=tinysrgb&fit=crop&h=400&ixlib=php-2.2.0&trim=auto&w=400&s=918c3cd913cf4f1c61fdc342427c3f07', host_id: admin.id)
event5 = Event.create(title: "Cloud Computing Conference 2020", start_date: DateTime.strptime('04/23/2020T10:00+00:00', '%m/%d/%YT%H:%M%z'), end_date: DateTime.strptime('04/28/2020T13:00+00:00', '%m/%d/%YT%H:%M%z'), ongoing: false, description: "Meet the latest and greatest disrupters of cloud computing in this 5-day virtual conference.", private: false, url: "https://github.com/9393wgbie", img_url: 'https://ktconnections.com/images/easyblog_shared/August_2019/8-14-19/191108894_S_400.jpg', host_id: admin.id)
event6 = Event.create(title: "Live Comedy: Rosebud Baker", start_date: DateTime.strptime('03/27/2020T21:30+00:00', '%m/%d/%YT%H:%M%z'), end_date: DateTime.strptime('04/20/2020T23:59+00:00', '%m/%d/%YT%H:%M%z'), ongoing: false, description: "Starting promptly at 9PM CST.", private: false, url: "www.zanies.com/asd8sda9vbsvvjj", img_url: 'https://static1.squarespace.com/static/5a9f0688e74940820d55fab2/5aa190bbc83025fedf7551ca/5e1cbb64fd50ac0e310cb0b3/1579286480758/02.04_rosebud_baker_gr_v2.jpg?format=1500w', host_id: user2.id)
event7 = Event.create(title: "Watch Matthew Eat Cereal", start_date: DateTime.strptime('04/20/2020T19:30+00:00', '%m/%d/%YT%H:%M%z'), end_date: DateTime.strptime('04/30/2020T22:30+00:00', '%m/%d/%YT%H:%M%z'), ongoing: true, description: "Vote for the sugar-coated, puffed grain snack Matthew will eat on camera.", private: true, url: "www.facebook.com/9fjdoldfjal", img_url: 'https://arc-anglerfish-arc2-prod-tbt.s3.amazonaws.com/public/KJA6PXGEWEI6TKTRIBWI6S7HAY.jpg', host_id: user1.id)


tag1 = Tag.create(tag_name: "Party")
tag2 = Tag.create(tag_name: "Music")
tag3 = Tag.create(tag_name: "Dance")

EventsTag.create(event_id: event2.id, tag_id: tag1.id)
EventsTag.create(event_id: event1.id, tag_id: tag2.id)

Rsvp.create(event_id: event1.id, user_id: user1.id)
Rsvp.create(event_id: event3.id, user_id: user1.id)
Rsvp.create(event_id: event6.id, user_id: user1.id)
Rsvp.create(event_id: event7.id, user_id: user1.id)
Rsvp.create(event_id: event2.id, user_id: user1.id)
Rsvp.create(event_id: event1.id, user_id: user2.id)
Rsvp.create(event_id: event7.id, user_id: user2.id)
Rsvp.create(event_id: event3.id, user_id: user2.id)
Rsvp.create(event_id: event4.id, user_id: user2.id)
Rsvp.create(event_id: event5.id, user_id: user2.id)