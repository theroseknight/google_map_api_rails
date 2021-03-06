class LegsController < ApplicationController
  #Create
  def create
    puts params
    new_leg = Leg.create(
      vacation_id:params[:leg][:vacation_id],
      starting_city:params[:leg][:starting_city],
      starting_state:params[:leg][:starting_state],
      ending_city:params[:leg][:ending_city],
      ending_state:params[:leg][:ending_state],
      starting_lat:params[:leg][:starting_lat],
      starting_lng:params[:leg][:starting_lng],
      ending_lat:params[:leg][:ending_lat],
      ending_lng:params[:leg][:ending_lng]
    )
    puts new_leg.inspect
    render json:{leg:new_leg}
  end

  #Read - All
  def index
    puts params
    legs = Leg.where(vacation_id:params[:vacation_id])
    render json:{legs:legs}
  end

  #Read - One
  def show
    leg = Leg.find(params[:id])
    render json:{leg:leg}
  end
end
