class RoutineExercise < ActiveRecord::Base
  belongs_to :routine
  belongs_to :exercise

  validates_presence_of :reps
end
