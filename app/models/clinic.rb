class Clinic < ActiveRecord::Base
  has_many :timings, class_name: 'Timing', foreign_key: 'clinic_id'
end
