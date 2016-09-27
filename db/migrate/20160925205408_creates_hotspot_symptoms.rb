class CreatesHotspotSymptoms < ActiveRecord::Migration
  def change
    create_table :hotspot_symptoms do |t|
      t.references :hotspot
      t.references :symptom

      t.timestamps null: false
    end
  end
end
