class User < ActiveRecord::Base

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable    #,:registerable


  mount_uploader :photo, UserPhotoUploader

  has_many :votes, dependent: :destroy
  has_many :girls, through: :votes

  validates_presence_of :photolink

  def self.leonid
    votes_count = User.minimum(:votes_count)
    if User.find_by(votes_count: votes_count)
      User.find_by(votes_count: votes_count)
    end
  end

  def voted?(girl)
    votes.where(girl_id: girl.id).present?
  end

end
