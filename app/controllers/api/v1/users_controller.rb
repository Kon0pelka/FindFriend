class Api::V1::UsersController < ApplicationController
  def index
    User.near([params[:lat], params[:lon]], 50, units: :km)
  end

  def show

  end
end
