class Event < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :user_id, presence: true
end
