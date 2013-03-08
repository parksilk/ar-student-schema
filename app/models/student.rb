require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base

  validates :email, :uniqueness => true

  validates :email, :format => { :with => /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/,
    :message => "Please enter a valid email address." }

  validate :phone_number_must_have_10_digits

  validate :students_must_be_at_least_5_years_old

  def name
    "#{first_name} #{last_name}"
  end

  def age
    (Time.now.utc.to_date - birthday).to_i / 365
  end

  private 

  def phone_number_must_have_10_digits
    if (phone.gsub(/\D/,'').length < 10)
      errors.add(:phone, "Please enter a valid phone number.")
    end
  end

  def students_must_be_at_least_5_years_old
    if ((Time.now.utc.to_date - birthday).to_i / 365) < 5
      errors.add(:birthday, "Student must be at least 5 years old.")
    end
  end

end

