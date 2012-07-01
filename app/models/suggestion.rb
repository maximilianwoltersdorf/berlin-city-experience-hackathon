class Suggestion < ActiveRecord::Base
mount_uploader :file, FileUploader

  attr_accessible :description, :file, :title, :user_id

  belongs_to :users
  has_many :comments

 
end
