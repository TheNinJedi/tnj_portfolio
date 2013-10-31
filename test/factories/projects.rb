# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    title "MyString"
    url "MyString"
    description "MyText"
    created_at "2013-10-30 16:29:49"
    published_at "2013-10-30 16:29:49"
    stats "MyString"
    seo_title "MyString"
    seo_description "MyString"
    user nil
  end
end
