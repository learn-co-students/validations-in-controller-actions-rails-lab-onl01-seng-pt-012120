class Post < ActiveRecord::Base
    validates :title,  presence: true,   uniqueness: { message: "must have a title please" }
    validates :content, length: { minimum: 100,
    too_short: "%{count} characters is the minimum allowed" }
    # validates :category,  presence: { message: "must have a valid category please" }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid catrgory" }


end

