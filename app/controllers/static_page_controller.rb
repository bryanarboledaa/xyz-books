class StaticPageController < ApplicationController
  
  def index
    @books = Book.all
  end

  def search
    if params[:search].empty?
      redirect_to root_path and return
    else
      parameter = params[:search].downcase
      @results = Book.where("books.title LIKE ?", ["%#{parameter}%"])
    end
  end

  def api_book
    parameter = params[:isbn]
    results = Book.where("books.isbn_10 || books.isbn_13 LIKE ?", ["%#{parameter}%"])

    mapped = results.map { |result| {
      id: result.id,
      publisher: result.publisher.name,
      author: "#{result.author.first_name + " " + result.author.last_name}"
    } }

    render json: mapped
    
  end
end
