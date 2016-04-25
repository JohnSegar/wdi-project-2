class Invite < ActiveRecord::Base
  belongs_to :wedding
  belongs_to :sender, foreign_key: "sender_id", class_name: "User"
  belongs_to :reciever, foreign_key: "reciever_id", class_name: "User"
end
