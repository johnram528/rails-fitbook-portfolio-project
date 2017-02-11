class Exercise < ActiveRecord::Base
  has_many :routine_exercises
  has_many :routines, through: :routine_exercises

  validates_presence_of :name, :reps, :rep_time, :muscles

  def estimated_time
    time = reps * rep_time
  end

  def show_estimated_time
    if estimated_time > 60
      "#{estimated_time/60} min"
    else
      "#{estimated_time} sec"
    end
  end 
end


