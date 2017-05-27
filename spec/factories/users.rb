FactoryGirl.define do
  factory :user do
    sequence :name do |n|
      "Test User #{n}"
    end
    sequence :email do |n|
      "user#{n}@test.com"
    end
    password "#{SecureRandom.hex(10)}"
  end
end
