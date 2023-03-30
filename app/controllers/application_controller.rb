class ApplicationController < ActionController::Base

   #deviseコントローラーにストロングパラメータを追加
    before_action :configure_permitted_parameters , if: :devise_controller?

    protected
    
    def configure_permitted_parameters
        #サインアップ時にnameのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        #アカウント編集時にnameとprofileのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile])
    end
end
