class Girl < ActiveRecord::Base
  mount_uploader :photo, GirlPhotoUploader
end
