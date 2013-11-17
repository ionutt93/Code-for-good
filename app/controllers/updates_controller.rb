class UpdatesController < ApplicationController
	def create
		@company = Company.find(params[:company_id])
		@update = Update.new(params[:update].permit(:update_SEI, :challenge, :support_req,
													:impact, :employed, :volunteers, :raised_funds))
		@update.company_id = @company.id
		if @update.save
			redirect_to @company #update_path(@update)
		else
			render "new"
		end
	end

	def index
		@updates = Update.all()
	end

	def update
		@company = Company.find(params[:company_id])
		@update = Update.find(params[:id])

		if @update.update(params[:update].permit(:update_SEI, :challenge, :support_req,
													:impact, :employed, :volunteers, :raised_funds))
			redirect_to @company
		else
			render "edit"
		end
	end

	def edit
		@company = Company.find(params[:company_id])
		@update = Update.find(params[:id])
	end

	def show
		@update = Update.find(params[:id])
	end

	def new
		@company = Company.find(params[:company_id])
		@update = Update.new
	end

	def destroy
		@update = Update.find(params[:id])
		@update.destroy
		redirect_to updates_path
	end

	def change_privacy
		@update = Update.find(params[:id])
		@update.privacy = !@update.privacy
		if @update.save
			redirect_to :back
		end
	end
end
