class Visit < ApplicationRecord
  belongs_to :recycling_center
  belongs_to :user
end
