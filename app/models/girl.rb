class Girl < ActiveRecord::Base
  mount_uploader :photo, GirlPhotoUploader

  def name
    [first_name, last_name].join(' ')
  end
end
