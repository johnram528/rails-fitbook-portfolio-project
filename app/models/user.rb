class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :routines

  def bmi
    metric_weight = weight * 0.45
    metric_height = height * 0.025
    sqrt_metric_height = metric_height * metric_height
    bmi = metric_weight/sqrt_metric_height
    bmi.round
  end
end



