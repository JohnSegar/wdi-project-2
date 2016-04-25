class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Caroline:
  # belongs_to :wedding, foreign_key: "owner_id", class_name: "Wedding"
  has_one :wedding, foreign_key: "user_id", class_name: "Wedding"
 
  has_many :invites_as_sender, foreign_key: "sender_id", class_name: "Invite"
  has_many :invites_as_receiver, foreign_key: "receiver_id", class_name: "Invite"

  has_many :weddings, through: :invites_as_receiver

  after_create :create_invite_for_wedding

  def get_wedding
    puts "**********************************"
    puts self.class.find(self.invited_by_id).inspect
    puts "**********************************"
    
    # Why is this returning nil?
    self.class.find(invited_by_id).wedding
  end

  def create_invite_for_wedding
    if self.invited_by_id.present?
      get_wedding.invites.create!(receiver_id: self.id, sender_id: self.invited_by_id)
    end
  end


end
