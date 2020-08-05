FactoryBot.define do
  factory :user do
    nickname { 'suzuki' }
    password { 111111 }
    password_confirmation {password}
  end
end