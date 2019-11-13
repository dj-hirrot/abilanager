class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable,
           :confirmable, :trackable

    validates :name, presence: true, length: { minimum: 6, maximum: 15 }, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 10 }
    validates :password_confirmation, presence: true, length: { minimum: 10 }
end
