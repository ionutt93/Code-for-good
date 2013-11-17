class CompaniesController < ApplicationController
	before_filter :authenticate_company!
	def create

	end

	def show
		@company = Company.find(params[:id])
		@updates = @company.updates.all
	end

	def index
		@companies = Company.where(admin:false)
	end

	# def update

	# end
end
