class ApartmentsController < ApplicationController
  def index 
    apts = Apartment.all 
    render json: apts
  end 

  def show 
    apt = find_apt
    render json: apt 
  end 

  def update
    apt = find_apt
    apt.update!(apt_params)
    render json: apt
  end

  private 

  def find_apt
    Apartment.find_by(id: params[:id])
  end

  def apt_params 
    params.permit(:id, :number)
  end 

end
