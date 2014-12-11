class Click < ActiveRecord::Base
  def self.barchart
    Click
      .where(created_at: (Time.now - 6.months) .. Time.now)
      .group_by{|p| p.created_at.beginning_of_month}
  end

  def self.calendarchart(datetime)
    datetime ||= Time.now
    Click.where(created_at: datetime.beginning_of_day .. datetime.end_of_day)  
  end
end