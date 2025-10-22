class Question < ApplicationRecord
  belongs_to :scale
  has_many :options, dependent: :destroy
  has_many :responses, dependent: :destroy
end
