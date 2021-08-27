# frozen_string_literal: true

class OwnerShip < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :ships
  validates :name, :email, :profile, presence: true
  enum profile: {owner_ship: 0}

end
