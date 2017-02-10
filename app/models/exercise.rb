class Exercise < ActiveRecord::Base
  has_many :routine_exercises
  has_many :routines, through: :workout_exercises
end
