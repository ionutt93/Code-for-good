class MailController < ApplicationController
	def sendmail
		if params[:email]=="" || params[:subject]=="" || params[:message]==""
			flash[:error] = "Please fill all the fields !"
			redirect_to :back
		else
			email = params[:email]
			subject = params[:subject]
			message = "You have one email from #{email} \n \n" + params[:message]
			CompanyMailer.contact(email, subject, message).deliver

			return if request.xhr?
				redirect_to :root

		end
	end
end
