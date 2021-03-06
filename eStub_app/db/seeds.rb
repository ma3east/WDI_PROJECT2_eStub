
# User(id: integer, first_name: string, last_name: string, email: text, date_of_birth: date, password_digest: string, profile_pic: text, created_at: datetime, updated_at: datetime)

User.destroy_all
Event.destroy_all
Category.destroy_all

# Category(id: integer, name: string, description: text, created_at: datetime, updated_at: datetime, event_id: integer)

# c1 = Category.create!(name: "Art")
# c2 = Category.create!(name: "Travel")
# c3 = Category.create!(name: "Sport")
# c4 = Category.create!(name: "Theatre")
# c5 = Category.create!(name: "Film")
# c6 = Category.create!(name: "Comedy")
# c7 = Category.create!(name: "Food and Drink")
# c8 = Category.create!(name: "Music")
# c9 = Category.create!(name: "Other")

# User(id: integer, first_name: string, last_name: string, email: text, date_of_birth: date, password_digest: string, profile_pic: text, created_at: datetime, updated_at: datetime)

guest = User.create!(first_name: 'guest', last_name: 'guestUser', email: 'guest@gmail.com', date_of_birth: "2000-07-19", password: 'guest', password_confirmation: 'guest', profile_pic: 'http://www.fillmurray.com/150/150')

andrea = User.create!(first_name: 'Andrea', last_name: 'Mckenzie', email: 'andrea@gmail.com', date_of_birth: "1972-12-28", password: 'andrea', password_confirmation: 'andrea', profile_pic: 'https://avatars3.githubusercontent.com/u/8496575?v=3&s=460')

bob = User.create!(first_name: 'bob', last_name: 'smith', email: 'bob@gmail.com', date_of_birth: "1985-03-03", password: 'arrow1', password_confirmation: 'arrow1', profile_pic: 'http://www.fillmurray.com/150/150')

mary = User.create!(first_name: 'mary', last_name: 'smith', email: 'mary@gmail.com', date_of_birth: "1990-08-03", password: 'mary', password_confirmation: 'mary', profile_pic: 'http://shorefire.com/images/uploads/gallery/Mary_Sarah_Music_PressPhoto_PhotoCredit_RussHarrington_004_1.jpg')

sally = User.create!(first_name: 'sally', last_name: 'peters', email: 'sally@gmail.com', date_of_birth: "2000-11-21", password: 'sally1', password_confirmation: 'sally1', profile_pic: 'http://www.adweek.com/tvnewser/wp-content/uploads/sites/3/2014/01/Sally-John.jpg')

april = User.create!(first_name: 'april', last_name: 'Brown', email: 'april@gmail.com', date_of_birth: "1995-11-24", password: 'april', password_confirmation: 'april', profile_pic: 'http://www.fillmurray.com/150/150')

ryan = User.create!(first_name: 'ryan', last_name: 'jones', email: 'ryan@gmail.com', date_of_birth: "1977-02-24", password: 'ryan', password_confirmation: 'ryan', profile_pic: 'http://www.fillmurray.com/150/150')

tommy = User.create!(first_name: 'tommy', last_name: 'adams', email: 'tommy@gmail.com', date_of_birth: "1998-03-21", password: 'tommy', password_confirmation: 'tommy', profile_pic: 'http://api.ning.com/files/dM6a4AYRwJOXVippWV6IzQqG3hWoriOtfYrcEDsPD7MrAsAxWV6*Jjd669gfhEk1jhjdajJf0HbZTPOZ-oq2LM4rHYz6AQxz/bobfeaturing2chainzheadband.jpg')

david = User.create!(first_name: 'david', last_name: 'beckham', email: 'david@gmail.com', date_of_birth: "1975-05-02", password: 'david', password_confirmation: 'david', profile_pic: 'http://cdn.images.express.co.uk/img/dynamic/79/590x/david_beckham_lead-434102.jpg')

sam = User.create!(first_name: 'sam', last_name: 'bagnall', email: 'sam@gmail.com', date_of_birth: "1980-05-02", password: 'sam', password_confirmation: 'sam', profile_pic: 'https://avatars2.githubusercontent.com/u/9537504?v=3&s=460') 

dami = User.create!(first_name: 'dami', last_name: 'Osinaike', email: 'dami@gmail.com', date_of_birth: "1985-09-02", password: 'dami', password_confirmation: 'dami', profile_pic: 'https://avatars3.githubusercontent.com/u/12749708?v=3&s=460')

evan = User.create!(first_name: 'evan', last_name: 'Gillogley', email: 'evan@gmail.com', date_of_birth: "1981-09-02", password: 'evan', password_confirmation: 'evan', profile_pic: 'https://avatars3.githubusercontent.com/u/9342155?v=3&s=460')


# Event(id: integer, name: text, date: date, venue: text, city: string, price: float, stub_file_upload: text, event_url: text, rating: integer, accompanied_by: string, description: text, created_at: datetime, updated_at: datetime, category_id: integer, user_id: integer, share: string)

e1 = Event.create!(name: "FA Community Shield", date: "2015-02-08", venue: "Wembley", city: "London", price: "45.00", accompanied_by: "Brother", description: "Great game, 1 - 0 to the Arsenal, yes.", user_id: andrea.id, share: "Yes")

e2 = Event.create!(name: "Football", date: "2015-02-08", venue: "Wembley", city: "London", price: "0.00", event_url: "http://www.uefa.com/MultimediaFiles/Photo/competitions/DomesticCup/02/13/11/84/2131184_w2.jpg", accompanied_by: "the kids", description: "Great game, 2 - 0 to the Arsenal, yes.", user_id: david.id, share: "Yes")











