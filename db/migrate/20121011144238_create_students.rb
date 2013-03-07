require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :gender
      t.date    :birthday
      t.string  :email
      t.string  :phone
    end
  end
end



# +------------+
# | students   |
# +------------+
# | id         |
# | first_name |
# | last_name  |
# | gender     |
# | birthday   |
# | email      |
# | phone      |
# +------------+


# Notes from Park's talk with Shereef:

# class Student < ActiveRecord::Base

# end

# # my_student = Student.new
# # my_student.age = 12
# my_student.first_name = "shereeef"
# my_student.last_name = "bishay"

# my_student.save!

# # students

# # first_name | last_name | age

# module  ActiveRecord
#   class Base
#   end

#   class Migration
#   end
