class Question < ApplicationRecord
	has_many :options, dependent: :destroy
	has_many :test_questions, dependent: :destroy
	accepts_nested_attributes_for :options
	has_many :tests, through: :test_questions
	validates :question, presence: true
	validates :q_type, presence: true
	has_many :answers, dependent: :destroy
end
