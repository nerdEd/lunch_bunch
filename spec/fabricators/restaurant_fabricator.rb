Fabricator :restaurant do
  name "Delicomb"
  street { Faker::Address.street_address }
  city { Faker::Address.city }
  state { Faker::Address.us_state_abbr }
end
