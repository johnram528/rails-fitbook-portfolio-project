class Routine < ActiveRecord::Base
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises
  belongs_to :user

  accepts_nested_attributes_for :exercises, :allow_destroy => true, :reject_if => :all_blank
  validates_presence_of :exercises

  def estimated_time
    exercises.map(&:estimated_time).inject(45, :+) unless exercises.empty? #accounts for 45 second break between exercise.
  end

  def show_estimated_time
    if !exercises.empty?
      if estimated_time > 60
        "#{estimated_time/60} min"
      else
        "#{estimated_time} sec"
      end
    else
      0
    end
  end

  def muscles
    muscles = []
    exercises.pluck(:muscles).each do |muscle|
      muscle.scan(/\w+/) {|musc| muscles << musc}
    end
    muscles.join(", ")
  end

end
