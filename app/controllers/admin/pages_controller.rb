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
		@tytul = Page.find(params[:id]).title
		@tekst = Page.find(params[:id]).text
		@utworzone = Page.find(params[:id]).created_at
		@zmienione = Page.find(params[:id]).updated_at
	end

	def create 
		@page = Page.new(page_params)
	    @page.save
	    flash[:notice] = "Post successfully created"
	    redirect_to admin_pages_url
	end
	def update
		@page = Page.find(params[:id])
		@page.update(page_params)
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
