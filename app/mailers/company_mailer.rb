class CompanyMailer < ActionMailer::Base
  default from: "from@example.com"

  def updates_email(company)
  	mail to:   company.email,
  	subject:    "Welcome",
  	body:       "Hi #{company.name}\n 
  				This company posted a new update."
  end

end
