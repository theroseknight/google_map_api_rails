class VacationsController < ApplicationController
  #Create
  def create
    puts "hoorah"
    new_vacation = Vacation.create(
      name:params[:vacation][:name]
    )
    render json:{vacation:new_vacation}
  end

  #Read - All
  def index
    vacations = Vacation.all.to_a
    vacations.map!{|vacation|vacation.attributes}
    render json:{vacations:vacations}
  end

  #Read - One
  def show
    vacation = Vacation.find(params[:id])
    render json:{vacation:vacation}
  end
end
