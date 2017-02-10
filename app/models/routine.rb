class Routine < ActiveRecord::Base
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises
  belongs_to :user
end
