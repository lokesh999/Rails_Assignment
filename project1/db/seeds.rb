require 'faker'
include Faker
200.times do 
     Post.create(
    title: Faker::Number.number(4),
    body: Faker::Address.street_address,
    comment: Faker::Number.number(2)
)
end
