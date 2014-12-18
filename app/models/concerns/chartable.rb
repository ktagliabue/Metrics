module Chartable
  extend ActiveSupport::Concern

  included do
    scope :barchart, -> { where(created_at: (Time.now - 6.months) .. Time.now).group_by{|p| p.created_at.beginning_of_month} }  
    scope :calendarchart, -> (datetime) do
      datetime ||= Time.now
      where(created_at: datetime.beginning_of_day .. datetime.end_of_day)
    end
  end
end