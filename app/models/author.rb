class Author < ApplicationRecord

    has_many :joiners, dependent: :destroy
    has_many :books, through: :joiners
end
