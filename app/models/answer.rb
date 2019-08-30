class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  belongs_to :test
  has_many :answer_options , dependent: :destroy
  has_many :options , through: :answer_options
end
