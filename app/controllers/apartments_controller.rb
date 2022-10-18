class ApartmentsController < ApplicationController
  def index 
    apts = Apartment.all 
    render json: apts
  end 

  def show 
    apt = Apartment.find_by(apt_params)
    render json: apt 
  end 

  private 

  def apt_params 
    params.permit(:id, :number)
  end 

end
