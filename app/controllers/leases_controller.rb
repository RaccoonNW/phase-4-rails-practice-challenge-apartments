class LeasesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    render json: Lease.all
  end

  def show
    lease = find_lease
    render json: lease
  end


  def create
    lease.create!(lease_params)
    render json: lease, status: :created
  end

  def destroy
    lease = find_lease
    lease.destroy
    head :no_content
  end

  private

  def lease_params
    params.permit(:rent, :tenant_id, :apartment_id)
  end

  def find_lease
    lease = Lease.find(params[:id])
  end

  def record_not_found
    render json: { error: "Lease not found" }, status: :not_found
  end

  def render_unprocessable_entity(exception)
    render status: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
