class Girl < ActiveRecord::Base

  mount_uploader :photo, GirlPhotoUploader

  has_many :votes, dependent: :destroy
  has_many :users, through: :votes
  has_many :comments


  validates :first_name, format: { with: /\A[а-яА-Я]+\z/, message: "only allows letters" }, presence: true
  validates :last_name,  format: { with: /\A[а-яА-Я]+\z/, message: "only allows letters" }, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }
  validates :vk, presence: true, uniqueness: true
  validates :photolink, presence: true

  scope :unrated, -> { where(rating: nil) }
  scope :rated,   -> { where.not(rating: nil) }


  def name
    [first_name, last_name].join(' ')
  end

  def ready_for_vote_calculating?
    if votes.count == User.all.count
      true
    else
      false
    end
  end

  def calculate_rating
    (votes.sum(:value) / votes.count).round(1)
  end

  def not_voted_users
    User.all - users
  end

end
