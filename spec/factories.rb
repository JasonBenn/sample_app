FactoryGirl.define do 
  factory :user do
    name                  "Jason Benn"
    email                 "jasonbenn@outlook.com"
    password              "foobar"
    password_confirmation "foobar"
  end
end