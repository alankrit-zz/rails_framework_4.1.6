class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.string :day
      t.integer :time
      t.integer :clinic_id

      t.timestamps
    end
  end
end
