class Scale < ApplicationRecord
  has_many :questions, dependent: :destroy
end
