class CompaniesController < ApplicationController
	before_filter :authenticate_company!
	def create

	end

	def show
		@company = Company.find(params[:id])
		@updates = @company.updates.all
	end
	# def new

	# end

	# def update

	# end
end
