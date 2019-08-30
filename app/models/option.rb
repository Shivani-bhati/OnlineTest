 class Option < ApplicationRecord
  belongs_to :question
  #has_many :answers, dependent: :destroy
  has_many :answer_options, dependent: :destroy
  validates :choice, presence: true
 end
