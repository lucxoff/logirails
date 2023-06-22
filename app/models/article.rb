class Article < ApplicationRecord
    has_and_belongs_to_many :tags

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :shortdesc, presence: true, length: {minimum: 20, maximum: 200}
end
