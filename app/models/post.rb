class Post < ActiveRecord::Base
    validates :title, :author, :content, presence: true
    validates :content, length: { minimum: 50 }
end
