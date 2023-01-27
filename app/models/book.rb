class Book < ApplicationRecord

    has_many :joiners, dependent: :destroy
    has_many :authors, through: :joiners
    belongs_to :publisher

    validates :isbn_10, uniqueness: true
    validates :isbn_13, uniqueness: true
end
