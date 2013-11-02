# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    title               {Faker::BaconIpsum.word}
    url                 {Faker::BaconIpsum.word}
    description         {Faker::BaconIpsum.word}
    created_at          {Time.now - 2.weeks}
    published_at        {Time.now - 1.weeks}
    stats               {Faker::BaconIpsum.sentence}
    seo_title           "MyString"
    seo_description     "MyString"
    user_id             1
  end
end
