class Routine < ActiveRecord::Base
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises
  belongs_to :user

  def estimated_time
    exercises.map(&:estimated_time).inject(45, :+) unless exercises.empty? #accounts for 45 second break between exercise.
  end

  def show_estimated_time
    if estimated_time > 60
      "#{estimated_time/60} min"
    else
      "#{estimated_time} sec"
    end
  end
end
