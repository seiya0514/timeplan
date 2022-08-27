FactoryBot.define do
  factory :blog do
    association :user

    title       {'test'}
    content     {'test'}
    start_time  {'2022-08-26 12:00:00'}
  end
end