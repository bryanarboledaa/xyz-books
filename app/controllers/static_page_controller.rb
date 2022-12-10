class StaticPageController < ApplicationController
  
  def index
    @books = Book.all
  end

  def search
    if params[:search].blank?
      redirect_to root_path and return
    else
      parameter = params[:search].downcase
      @results = Book.where("books.title LIKE ?", ["%#{parameter}%"])
    end
  end
end
