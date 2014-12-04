class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.text :services
      t.text :desc
      t.integer :doctor_id

      t.timestamps
    end
  end
end
