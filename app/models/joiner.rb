class Joiner < ApplicationRecord
  belongs_to :book
  belongs_to :author
end
