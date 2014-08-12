FactoryGirl.define do
  factory :girl do
    first_name "Катерина"
    last_name "Крылова"
    vk "https://vk.com/id21036797"
    photo { File.open(File.join(Rails.root, '/spec/fixtures/files/photo1.jpg')) }
  end
end