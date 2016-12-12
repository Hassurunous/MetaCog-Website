class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, :body, presence: true

    def self.search(search)
        where('name LIKE ?', "%#{search}%")
        where('body LIKE ?', "%#{search}%")
    end
end
