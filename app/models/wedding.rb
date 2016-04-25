class Wedding < ActiveRecord::Base
  
  # Caroline:
  # belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  has_many :invites
  belongs_to :user
  acts_as_commentable
end

  
  
