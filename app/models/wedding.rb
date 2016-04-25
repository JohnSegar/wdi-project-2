class Wedding < ActiveRecord::Base
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  has_many :invites
  belongs_to :user
  acts_as_commentable
end

  
  
