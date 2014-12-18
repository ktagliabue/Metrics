class UsersController < ApplicationController
  def show
    if params[:user_id]
      @user = User.find(params[:user_id])
    else
      @user = current_user
    end
    params[:datetime] ||= Time.now.to_s
    @date = Time.parse(params[:datetime])
  end
end
