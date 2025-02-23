class LeasesController < ApplicationController
  def create 
    lease = Lease.create!(lease_params)
    render json: lease, status: :created
  end

  def destroy
    lease = find_lease
    lease.delete
    render json: {}, status: :accepted
  end

  private 

  def find_lease
    Lease.find(params[:id])
  end

  def lease_params 
    params.permit(:rent, :apartment_id, :tenant_id)
  end 

end
