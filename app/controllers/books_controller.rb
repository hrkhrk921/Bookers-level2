class BooksController < ApplicationController
	 before_action :authenticate_user!
	 before_action :correct_book, only: [:edit]
	def new
		@book = Book.new
	end
	def create
		@book = Book.new(book_params)
		@book.user_id = current_user_id
		@book.save
		redirect_to books_path
	end
	def index
	end
	def show
	end
	private
	def book_params
		params.require(:book).permit(:title,:body)
	end
end
