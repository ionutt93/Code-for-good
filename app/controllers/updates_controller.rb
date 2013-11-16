class UpdatesController < ApplicationController
	def create
		@update = Update.new(params[:update].permit(:update_SEI, :challenge, :support_req,
													:impact, :employed, :volunteers, :raised_funds))

		if @update.save
			redirect_to update_path(@update)
		else
			render "new"
		end
	end

	def index
		@updates = Update.all()
	end

	def update
		@update = Update.find(params[:id])

		if @update.update(params[:update].permit(:update_SEI, :challenge, :support_req,
													:impact, :employed, :volunteers, :raised_funds))
			redirect_to update_path(@update)
		else
			render "edit"
		end
	end

	def edit
		@update = Update.find(params[:id])
	end

	def show
		@update = Update.find(params[:id])
	end

	def new
		@update = Update.new
	end

	def destroy
		@update = Update.find(params[:id])
		@update.destroy
		redirect_to updates_path
	end
end
