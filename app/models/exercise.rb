class Exercise < ActiveRecord::Base
  has_many :routine_exercises
  has_many :routines, through: :routine_exercises

  validates_presence_of :name, :rep_time, :muscles

  def estimated_time
    time = reps * rep_time
  end


end


