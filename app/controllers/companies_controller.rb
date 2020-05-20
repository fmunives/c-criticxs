class CompaniesController < ApplicationController
    def index
        @companies = Company.all
        render json: @companies
    end
    def show
        @company = Company.find(params[:id])
        render json: @company
    end
    def create
        @company = Company.new(company_params)
        if @company.save
            render json: @company
        else
            render json: @company.errors
        end
    end

    def update
        @company = Company.find(params[:id])
        if @company.update_attributes(company_params)
            render json: @company
        else
            render json: @company.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @company = Company.find(params[:id])
        @company.destroy
        render json: {status: 'Successfully destroyed', data: @company}, status: :ok
    end

    private
    def company_params
        params.require(:company).permit(:name, :description, :start_date, :country)
    end
end
