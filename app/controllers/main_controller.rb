class MainController < ApplicationController
	def index 
		@companies = Company.where(admin: false)
	end

	def test
	end

	def contact
	end
end
