class LegsController < ApplicationController
  #Create
  def create
    new_leg = Leg.create(
      vacation_id:params[:leg][:vacation_id],
      starting_city:params[:leg][:starting_city],
      ending_city:params[:leg][:ending_city],
      starting_coordinate_one:params[:leg][:starting_coordinate_one],
      starting_coordinate_two:params[:leg][:starting_coordinate_two],
      ending_coordinate_one:params[:leg][:ending_coordinate_one],
      ending_coordinate_two:params[:leg][:ending_coordinate_two]
    )
    render json:{leg:new_leg}
  end

  #Read - All
  def index
    legs = Leg.where(vacation_id:params[:vacation_id])
    legs.map!{|leg|leg.attributes}
    render json:{legs:legs}
  end

  #Read - One
  def show
    leg = Leg.find(params[:id])
    render json:{leg:leg}
  end
end
