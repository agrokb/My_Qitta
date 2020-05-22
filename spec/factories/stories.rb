FactoryBot.define do
  factory :story do
    user { nil }
    memo { "MyText" }
    is_publish { false }
    title { "MyText" }
    skill_tag { "MyText" }
  end
end
