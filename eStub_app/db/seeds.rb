
# User(id: integer, first_name: string, last_name: string, email: text, date_of_birth: date, password_digest: string, profile_pic: text, created_at: datetime, updated_at: datetime)

User.destroy_all
Event.destroy_all
Category.destroy_all

c1 = Category.create!(name: "Art")
c2 = Category.create!(name: "Travel")
c3 = Category.create!(name: "Sport")
c4 = Category.create!(name: "Theatre")
c5 = Category.create!(name: "Film")
c6 = Category.create!(name: "Comedy")
c7 = Category.create!(name: "Food and Drink")
c8 = Category.create!(name: "Music")
c9 = Category.create!(name: "Other")

u1 = User.create!(first_name: 'bob', last_name: 'smith', email: 'bob@gmail.com', date_of_birth: "1985-03-03", password: 'arrow1', password_confirmation: 'arrow1', profile_pic: 'http://www.fillmurray.com/150/150')

u2 = User.create!(first_name: 'mary', last_name: 'smith', email: 'mary@gmail.com', date_of_birth: "1990-08-03", password: 'mary1', password_confirmation: 'mary1', profile_pic: 'http://www.fillmurray.com/150/150')

u3 = User.create!(first_name: 'sally', last_name: 'peters', email: 'sally@gmail.com', date_of_birth: "2000-11-21", password: 'sally1', password_confirmation: 'sally1', profile_pic: 'http://www.fillmurray.com/170/170')

u3 = User.create!(first_name: 'april', last_name: 'Brown', email: 'april@gmail.com', date_of_birth: "1995-11-24", password: 'april1', password_confirmation: 'april1', profile_pic: 'http://www.fillmurray.com/150/150')






