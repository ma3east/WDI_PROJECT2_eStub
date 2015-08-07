class Event < ActiveRecord::Base
  mount_uploader :stub_file_upload, StubFileUploadUploader
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :user_id, presence: true
  validates :date, presence: true
  validates :venue, presence: true
end
