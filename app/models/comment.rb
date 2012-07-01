class Comment < ActiveRecord::Base
  attr_accessible :description, :user_id, :suggestion_id

  belongs_to :user
  belongs_to :suggestion
end
