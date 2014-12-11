class PageviewsController < ApplicationController
  def index
    @pageviews = Pageview.all
    params[:datetime] ||= Time.now.to_s
    @date = Time.parse(params[:datetime])
  end
end
