class ClicksController < ApplicationController
  def index
    @clicks = Click.all
  end
end
