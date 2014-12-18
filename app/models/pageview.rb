class Pageview < ActiveRecord::Base
  include Chartable
  belongs_to :user
end