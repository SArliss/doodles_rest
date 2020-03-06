class Category < ApplicationRecord
  # model association
  has_many :doodles, dependent: :destroy

  # validations
  validates_presence_of :name
end
