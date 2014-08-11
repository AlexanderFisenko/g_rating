class Girl < ActiveRecord::Base

  mount_uploader :photo, GirlPhotoUploader

  has_many :votes, dependent: :destroy
  has_many :users, through: :votes

  validates :first_name, format: { with: /\A[а-яА-Я]+\z/, message: "only allows letters" }, presence: true
  validates :last_name,  format: { with: /\A[а-яА-Я]+\z/, message: "only allows letters" }, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }
  validates :vk, presence: true, uniqueness: true


  def name
    [first_name, last_name].join(' ')
  end

  def ready_for_vote_calculating?
    if votes.count == 4
      true
    else
      false
    end
  end

  def rank
    if ready_for_vote_calculating?
      array = []
      votes.each do |vote|
        array << vote.value
      end

      modified_array = array.inject{|sum,x| sum + x }
      (modified_array / User.all.count).round(1)
    end
  end

  def has_been_voted?(user)
    if votes.where(user_id: user.id).first
      true
    end
  end

  def not_voted_users
    User.all - users
  end

end
