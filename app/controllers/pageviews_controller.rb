class PageviewsController < ApplicationController
  def index
    @pageviews = Pageview.where(user_id: current_user.id )
    params[:datetime] ||= Time.now.to_s
    @date = Time.parse(params[:datetime])
    puts "@date#{@date}"
  end
end
