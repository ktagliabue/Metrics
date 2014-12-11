class PageviewsController < ApplicationController
  def index
    @pageviews = Pageview.all
  end
end
