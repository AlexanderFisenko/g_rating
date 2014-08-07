class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :girl

  validates :value, inclusion: { in: [0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10], message: "invalid value" }
  validates_presence_of :value, :text


end
