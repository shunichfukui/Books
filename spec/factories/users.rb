FactoryBot.define do
  factory :user do
    nickname { 'suzuki' }
    email                 { 'example@cmail.com' }
    password { 111111 }
    password_confirmation {password}
  end
end