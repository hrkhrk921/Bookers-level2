class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :correct_book, only: [:edit]
	def index
		@book = Book.new
		@users =User.all
		@user = current_user
	end
	def edit
		@user = User.find(params[:id])
	end
	private
	def user_params
		params.require(:user).permit(:name,:profile_image,:introduction)
	end
end
