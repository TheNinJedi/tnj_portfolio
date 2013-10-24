# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    email {Faker::Internet.email}
    name {Faker::Name.name}
    subject {Faker::Lorem.sentence}
    body {Faker::Lorem.paragraph}
  end
end
