class Review < ApplicationRecord
  belongs_to :booking, dependent: :destroy
end
