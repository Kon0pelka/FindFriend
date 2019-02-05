class Api::V1::UsersController < ApplicationController
  def index
    user = User.near([params[:lat], params[:lon]], ENV.fetch('radius_find'), units: :km)
    render json: user.as_json(only: %i[first_name second_name gender])
  end

  def show
    render json: User.find_by_id(params[:id])
                     .as_json(only: %i[first_name second_name gender age lat lon])
  end
end
