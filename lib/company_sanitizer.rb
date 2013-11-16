class Company::ParameterSanitizer < Devise::ParameterSanitizer
    #edit these params when you want to add more fields to your forms/ model
   private

    def sign_in
    	default_params.permit(:username, :email)
    end

    def account_update
        default_params.permit(:name, :email, :password, :password_confirmation, :current_password)
    end

    def sign_up
    	default_params.permit(:name, :email, :password, :password_confirmation)
    end
end