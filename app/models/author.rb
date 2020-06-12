class Author < ActiveRecord::Base
    validates :email,  presence: true,   uniqueness: { message: "must be unique please" }
    validates :name, presence: true




end
