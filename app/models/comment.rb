class Comment < ActiveRecord::Base
  belongs_to :girl
  belongs_to :user
end
