class Doodle < ApplicationRecord
  # model association
  belongs_to :category, dependent: :destroy
  belongs_to :user, :foreign_key => :category_id

  # validations
  validates_presence_of :title, :path
end
