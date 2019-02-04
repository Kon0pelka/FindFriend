class Api::V1::UsersController < ApplicationController
  def index
    render json: User.near([params[:lat], params[:lon]], 1000, units: :km)
  end

  def show
    render json: User.find_by_id(params[:id])
  end
end
