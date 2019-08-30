class Test < ApplicationRecord
	has_many :test_questions, dependent: :destroy
	has_many :questions, through: :test_questions
	has_many :answers, dependent: :destroy
	has_many :results, dependent: :destroy
	validates :name, presence: true
	validates :duration, presence: true
	validates :test_type, presence: true
	validates :no_of_questions, presence: true
end
