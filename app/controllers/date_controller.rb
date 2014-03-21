class DateRange
  def self.today
    (Time.now.midnight)..Time.now.end_of_day
  end
 
  def self.yesterday
    (Time.now.midnight - 1.day)..Time.now.end_of_day
  end
 
  def self.tomorrow
    (Time.now.tomorrow)..Time.now.end_of_day
  end
end