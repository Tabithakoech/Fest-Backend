class User < ApplicationRecord
    has_many :comments
    has_many :concerts, through: :comments

    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
end
