class Api::V1::PageviewsController < Api::V1::ApplicationController
  def create
    @pageview = Pageview.new(params.require(:pageview).permit(:url, :useragent))
    @pageview.save
    head 200
  end
end
