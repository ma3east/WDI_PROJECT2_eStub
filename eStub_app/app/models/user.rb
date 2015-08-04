class User < ActiveRecord::Base
  has_many :events
  has_secure_password

  validates :first_name, presence: true, length: { minimum: 2}
  validates :last_name, presence: true, length: { minimum: 2}
  # date_select :date, :start_year => Date.current.year, :end_year => 1920
  # validates :date, :start_year => Date.current.year, :end_year => 1920
  validates :date_of_birth, presence: true

  validates :email, presence: true, uniqueness: true, length: { in: 5..50 }

  validates_each :date_of_birth do |record, attr, value|
    record.errors.add attr, 'Age specified is too young to use the site
    (minimum 13)' if value > (13.years.ago).to_date
  end

end
