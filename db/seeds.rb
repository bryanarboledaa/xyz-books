# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# books

book1 = Book.create(author_id: 1, publisher_id: 1, title: "American Elf", isbn_10:  1891830856, isbn_13: 9781891830853, publication_year: 2004, edition: "Book 2", price: 1000)

book1.save

book2 = Book.create(author_id: 2, publisher_id: 1, title: "Hunter X Hunter", isbn_10:  1891830856, isbn_13: 9781891830853, publication_year: 2005, edition: "Season 2", price: 2500)

book2.save


# authors

author1 = Author.create(book_id: 1, first_name: "Joel", last_name: "Hartse")

author1.save

author2 = Author.create(book_id: 2, first_name: "Hannah P.", last_name: "Templer")

author2.save


# # publishers

publisher1 = Publisher.create(book_id: 1, name: "Paste Magazine")

publisher1.save
