require 'faker'

users_data = [
  {
    name: Faker::Name.name,
    email: "emailuser@mail.ru",
    password: '123123123',
    password_confirmation: '123123123'
  }
]

users_data.each { |user_data| AdminUser.create!(user_data) }