class Admin::PagesController < ApplicationController
	def index
		@powitanie = "Strona główna panelu"
	end

	def show

	end

	def new

	end

	def create 
		@page = Page.new(page_params)
	    @page.save
	    redirect_to @page
	end
	private
	  def page_params
	    params.require(:page).permit(:title, :text)
	  end
end
