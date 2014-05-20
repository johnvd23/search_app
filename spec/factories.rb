FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "thepassword"
    password_confirmation "thepassword"
  end
end