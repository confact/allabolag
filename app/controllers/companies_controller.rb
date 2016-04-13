class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /companies/search
  def search
    if params[:company].present?
      name = params[:company][:name]
      @company = Company.find_by name: name
    else
      @company = Company.new
    end
  end

  # result of companies
  def result
    name = params[:company][:name]
    @company = Company.find_by name: name
    if @company.present?
      respond_to do |format|
        format.json { render json: @company }
      end
    else
      respond_to do |format|
        format.json do
          render json: { error: 'Företaget finns inte.' }, status: :unprocessable_entity
        end
      end
    end
  end
end
