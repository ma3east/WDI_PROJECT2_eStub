
# User(id: integer, first_name: string, last_name: string, email: text, date_of_birth: date, password_digest: string, profile_pic: text, created_at: datetime, updated_at: datetime)

User.destroy_all
Event.destroy_all
Category.destroy_all

# Category(id: integer, name: string, description: text, created_at: datetime, updated_at: datetime, event_id: integer)

c1 = Category.create!(name: "Art")
c2 = Category.create!(name: "Travel")
c3 = Category.create!(name: "Sport")
c4 = Category.create!(name: "Theatre")
c5 = Category.create!(name: "Film")
c6 = Category.create!(name: "Comedy")
c7 = Category.create!(name: "Food and Drink")
c8 = Category.create!(name: "Music")
c9 = Category.create!(name: "Other")

# User(id: integer, first_name: string, last_name: string, email: text, date_of_birth: date, password_digest: string, profile_pic: text, created_at: datetime, updated_at: datetime)

u1 = User.create!(first_name: 'bob', last_name: 'smith', email: 'bob@gmail.com', date_of_birth: "1985-03-03", password: 'arrow1', password_confirmation: 'arrow1', profile_pic: 'http://www.fillmurray.com/150/150')

u2 = User.create!(first_name: 'mary', last_name: 'smith', email: 'mary@gmail.com', date_of_birth: "1990-08-03", password: 'mary1', password_confirmation: 'mary1', profile_pic: 'http://www.fillmurray.com/150/150')

u3 = User.create!(first_name: 'sally', last_name: 'peters', email: 'sally@gmail.com', date_of_birth: "2000-11-21", password: 'sally1', password_confirmation: 'sally1', profile_pic: 'http://www.fillmurray.com/170/170')

u3 = User.create!(first_name: 'april', last_name: 'Brown', email: 'april@gmail.com', date_of_birth: "1995-11-24", password: 'april1', password_confirmation: 'april1', profile_pic: 'http://www.fillmurray.com/150/150')

# Event(id: integer, name: text, date: date, venue: text, city: string, price: float, stub_file_upload: string, text: string, event_url: text, rating: integer, accompanied_by: string, description: text, created_at: datetime, updated_at: datetime, category_id: integer, user_id: integer)

e1 = Event.create!(name: "FA Community Shield", date: "2015-02-08", venue: "Wembley", city: "London", price: "45.00", accompanied_by: "brother", description: "Great game, 1 - 0 to the Arsenal, yes.")

ul.events << e1

c3.events << e1




