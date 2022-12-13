class Book < ApplicationRecord

    has_many :joiners, dependent: :destroy
    has_many :authors, through: :joiners
    belongs_to :publisher
end
