class TransportMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :recycling_center
end
