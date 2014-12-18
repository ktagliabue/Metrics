class Api::V1::PageviewsController < Api::V1::ApplicationController
  def create
    @user = User.find(params[:user_id])
    @pageview = Pageview.new(params.require(:pageview).permit(:url, :useragent))
    @pageview.user = @user
    @pageview.save
    head 200
  end

  def index
    @user = User.find(params[:user_id])
    render json: @user.pageviews
  end
end
