class CompanyMailer < ActionMailer::Base
	def contact(email, subject, message, sent_at = Time.now)
		@email = email
		@subject= subject
		@body= message
		mail(from: @email, subject: @subject, body: @body, to: "codeforgood3@gmail.com")
	end
end
