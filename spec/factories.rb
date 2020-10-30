FactoryBot.define do
  factory(:park) do
    name {Faker::Educator.campus}
    location {Faker::Address.city(options: {with_state: true})}
    review {Faker::Hipster.paragraph_by_chars(characters: 50, supplemental: false)}
    rating {rand(1...6)}
  end

  factory(:api_key) do
    token "SomeRandomToken"
  end
end