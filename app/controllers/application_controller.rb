class ApplicationController < ActionController::Base

	#deviseコントローラーにストロングパラメータを追加
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	#サインインした後の画面
	def after_sign_in_path_for(resource)
		users_path(current_user)
	end
	def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
    end
	protected
	def configure_permitted_parameters
		#サインアップ時にnameのストロングパラメータを追加
		devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])

	end
end
