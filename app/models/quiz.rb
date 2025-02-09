class Quiz < ApplicationRecord
  belongs_to :user
  has_many :quiz_questions, dependent: :destroy
  has_many :questions, through: :quiz_questions

  validates :score, numericality: { only_integer: true }, allow_nil: true
end
