class User < ActiveRecord::Base
    validates :first_name, :last_name, :email, presence: true, length: {minimum: 2}
    has_many :messages
    has_many :posts
    has_many :owners
    has_many :comments, as: :com
end
