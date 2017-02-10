class Exercise < ActiveRecord::Base
  has_many :routine_exercises
  has_many :routines, through: :routine_exercises
end
