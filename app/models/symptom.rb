class Symptom < ActiveRecord::Base
  belongs_to :solution
  belongs_to :category
  has_many :hotspot_symptoms
  has_many :hotspots, through: :hotspot_symptoms

  validates :category, presence: true
  validates :description, presence: true
end
