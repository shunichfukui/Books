FactoryBot.define do
  factory :book do
    association :user 
    name { '人間失格' }
    content { '紹介文' }
    genre_id { '5' }
    tag_name { 'タグ'}
   
  end
end