class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  if Rails.env.production?
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  else
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  end

  mount_uploader :photo, UserPhotoUploader

  has_many :votes, dependent: :destroy
  has_many :girls, through: :votes

  validates_presence_of :photolink

  def voted?(girl)
    votes.where(girl_id: girl.id).present?
  end

end
