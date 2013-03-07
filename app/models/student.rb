require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base
  
  def name
    "#{first_name} #{last_name}"
  end

  def age
    (Time.now.utc.to_date - birthday).to_i / 365
  end
end
