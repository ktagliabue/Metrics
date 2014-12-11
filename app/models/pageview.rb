class Pageview < ActiveRecord::Base
  def self.barchart
    Pageview.where(created_at: (Time.now - 6.months) .. Time.now)
  end
end