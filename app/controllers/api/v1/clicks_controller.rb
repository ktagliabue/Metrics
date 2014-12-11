class Api::V1::ClicksController < Api::V1::ApplicationController
  def create
    @click = Click.new(params.require(:click).permit(:url, :element))
    @click.save
    head 200
  end
end
