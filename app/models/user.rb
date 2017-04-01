class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rankings
  has_many :scores

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:     auth.info.nickname,
                         provider: auth.provider,
                         uid:      auth.uid,
                         email:    "#{auth.provider}-#{auth.uid}@auth.com",
                         password: Devise.friendly_token[0,20]
                        )
    end
    user
  end
end
