class Routine < ActiveRecord::Base
  has_many :routine_exercises
  has_many :routines, through: :workout_exercises
  belongs_to :user
end
