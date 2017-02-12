module UsersHelper
  def health_status
    if bmi > 18 && bmi < 25
      "You're at at a healthy weight. Keep up the good work!"
    else 
      "Every workout counts. Keep up the good work!"
    end
  end

  
end
