class Girl < ActiveRecord::Base

  mount_uploader :photo, GirlPhotoUploader

  has_many :votes, dependent: :destroy

  validates :first_name, format: { with: /\A[а-яА-Я]+\z/, message: "only allows letters" }, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }
  validates :last_name,  format: { with: /\A[а-яА-Я]+\z/, message: "only allows letters" }, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }
  validates :vk, presence: true, uniqueness: true

  accepts_nested_attributes_for :votes


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
    array = []
    votes.each do |vote|
      array << vote.value
    end

    modified_array = array.inject{|sum,x| sum + x }
    (modified_array / 4).round(1)
  end

  def has_been_voted?(user)
    if votes.where(user_id: user.id).first
      true
    end
  end

end
