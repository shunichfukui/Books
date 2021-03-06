class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  # , dependent: :destroy
         has_many :sns_credentials
         has_many :books
         has_many :messages
         has_many :favorites 
         has_many :favorite_books, through: :favorites, source: :book  
        
         validates :nickname ,presence: true

         def self.guest
          find_or_create_by!(email: 'test@example.com', nickname: 'テスト') do |user|
            user.password = SecureRandom.urlsafe_base64
          end
        end

         def self.from_omniauth(auth)
          sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
          user = User.where(email: auth.info.email).first_or_initialize(
            nickname: auth.info.name,
            email: auth.info.email
          )
          if user.persisted?
            sns.user = user
            sns.save
          end
          { user: user, sns: sns }
       end
end
