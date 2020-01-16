class Timepiece

  def initialize(day, month)
    @bday = Date.new(0, month.to_i, day.to_i).yday
  end 

  def bday_today?
    @bday == Date.today.yday
  end

  def countdown
    days = @bday - Date.today.yday
    if days < 0 
      366 - (Date.today.yday - @bday)
    else 
      days
    end 
  end 
end 