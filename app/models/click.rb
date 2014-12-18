class Click < ActiveRecord::Base
  include Chartable
  belongs_to :user
end