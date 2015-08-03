
# User(id: integer, first_name: string, last_name: string, email: text, date_of_birth: date, password_digest: string, profile_pic: text, created_at: datetime, updated_at: datetime)

User.destroy_all

u1 = User.create!(first_name: 'bob', last_name: 'smith', email: 'bob@gmail.com', date_of_birth: "1985-03-03", password: 'arrow1', password_confirmation: 'arrow1', profile_pic: 'http://www.fillmurray.com/150/150')

u2 = User.create!(first_name: 'mary', last_name: 'smith', email: 'mary@gmail.com', date_of_birth: "1990-08-03", password: 'mary1', password_confirmation: 'mary1', profile_pic: 'http://www.fillmurray.com/150/150')

u3 = User.create!(first_name: 'sally', last_name: 'peters', email: 'sally@gmail.com', date_of_birth: "2000-11-21", password: 'sally1', password_confirmation: 'sally1', profile_pic: 'http://www.fillmurray.com/170/170')