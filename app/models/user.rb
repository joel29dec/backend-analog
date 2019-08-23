class User < ApplicationRecord
    has_many :orders
    has_many :boardgames, through: :orders
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
