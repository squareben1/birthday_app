class Timepiece
  attr_reader :name
  def initialize(name, day, month)
    @bday = Date.new(0, month.to_i, day.to_i).yday
    @name = name
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

  def self.create(name, day, month)
    @birthday_instance = Timepiece.new(name, day, month)
  end

  def self.instance
    @birthday_instance ||= nil
  end
end
