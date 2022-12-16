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

  # def response_404
  #   render :file => "#{Rails.root}/public/404.html", layout: false, status: :not_found and return
  # end

  # def is_valid_isbn_13(isbn)
  #   regex = /^(?:ISBN(?:-13)?:?\ *(97(?:8|9)([ -]?)(?=\d{1,5}\2?\d{1,7}\2?\d{1,6}\2?\d)(?:\d\2*){9}\d))$/i

  #   if !isbn.match(regex)
  #     render :file => "#{Rails.root}/public/400.html", layout: false, status: :bad_request and return
  #   end
  # end

  # def check_and_hyphenate(isbn)
  #   if ISBN_Tools.is_valid?(isbn)
  #     puts ISBN_Tools.hyphenate(isbn)
  #   else
  #     cksum = ISBN_Tools.compute_check_digit(isbn)
  #     puts "Invalid ISBN number [#{isbn}]. Checksum should be #{cksum}"
  #   end
  # end

  def api_book
    parameter = params[:isbn]
    results = Book.where("books.isbn_10 || books.isbn_13 LIKE ?", ["%#{parameter}%"])

      if ISBN_Tools.is_valid?(parameter)
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

          render json: mapped_result and return
        else
          render :file => "#{Rails.root}/public/404.html", layout: false, status: :not_found and return
        end
      else
        render :file => "#{Rails.root}/public/400.html", layout: false, status: :bad_request and return
      end 
  end
end
