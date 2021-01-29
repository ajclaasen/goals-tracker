FactoryBot.define do
  factory :goal do
    text { "Beat the bad guys." }
    reward { 100 }
    character
  end
end
