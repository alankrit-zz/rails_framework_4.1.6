json.doctor do
  json.id             @d.id
  json.first_name     @d.first_name
  json.last_name      @d.last_name
  json.age            @d.age
  json.desc           @d.desc
  json.random         @d.random
  json.clinics        @d.clinics do |c|
    json.id               c.id
    json.name             c.name
    json.services         c.services
    json.desc             c.desc
    json.doctor_id        c.doctor_id
    json.timings          c.timings do |t|
      json.id                  t.id
      json.day                 t.day
      json.time                t.time
      json.clinic_id           t.clinic_id
    end
  end
end
