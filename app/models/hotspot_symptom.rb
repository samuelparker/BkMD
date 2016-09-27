class HotspotSymptom < ActiveRecord::Base
  belongs_to :hotspot
  belongs_to :symptom
end
