class Hotspot < ActiveRecord::Base
  has_many :hotspot_symptoms
  has_many :symptoms, through: :hotspot_symptoms

  validates :name, presence: true
end
