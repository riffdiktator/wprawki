class Admin::PagesController < ApplicationController
	def index
		@powitanie = "Strona główna panelu"
		@pages = Page.all
	end

	def show

	end

	def new

	end

	def edit
		@numer = params[:id]
	end

	def create 
		@page = Page.new(page_params)
	    @page.save
	    redirect_to admin_pages_url
	end

	def destroy
		@numer = params[:id]
		Page.destroy(params[:id])
	end

	private
	  def page_params
	    params.require(:page).permit(:title, :text)
	  end
end
