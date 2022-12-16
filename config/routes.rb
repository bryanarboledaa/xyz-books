Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'static_page#index'
  get '/search' => 'static_page#search'
  get '/books/:isbn' => 'static_page#api_book'
  get '/convert/:isbn' => 'static_page#isbn_converter'
end
