class UpdatesController < ApplicationController
	def create
		@company = Company.find(params[:company_id])
		@update = Update.new(params[:update].permit(:update_SEI, :challenge, :support_req,
													:impact, :employed, :volunteers, :raised_funds))
		@message = "Hello, #{@company.name}\n has uploaded new information."
		@subject = "Updates from #{@company.name}"
		@email = Company.where(admin: true).email.take

		@update.company_id = @company.id
		if @update.save
			redirect_to :back #update_path(@update)
			CompanyMailer.contact(@email,@subject,@message).deliver
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
end
