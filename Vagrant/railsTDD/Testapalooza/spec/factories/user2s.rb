FactoryBot.define do
  factory :user2 do
    admin {false}


    trait :admin do
      admin {true}
    end

    trait :female do
      fname { "Jane" }
      email { "Jane@bob.com" }
    end

    trait :male do
      fname { "Bob" }
      email { "Bob@bob.com" }
    end

  end
end
