class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :orders


  validates :name, :profile, presence: true

  enum profile: { admin: 0, client: 1, intermediary: 2, ship_owner: 3}

end
