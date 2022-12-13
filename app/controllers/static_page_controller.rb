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

    if results.exists?
      mapped_result = 
        results.map { |result| {
          id: result.id,
          title: result.title,
          author: result.authors.pluck(:first_name, :last_name).map { |name| name.join(" ") }.join(", "),
          edition: result.edition,
          price: result.price,
          isbn_10: result.isbn_10,
          isbn_13: result.isbn_13,
          publisher: result.publisher.name
        } }

      render json: mapped_result
    else
      render :file => "#{Rails.root}/public/404.html", layout: false, status: :not_found
    end
  end
end
