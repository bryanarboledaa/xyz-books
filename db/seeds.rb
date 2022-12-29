# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#publishers

publisher1 = Publisher.create!(name: "Paste Magazine", created_at: Time.now, updated_at: Time.now)

publisher2 = Publisher.create!(name: "Publishers Weekly", created_at: Time.now, updated_at: Time.now)

publisher3 = Publisher.create!(name: "Graywolf Press", created_at: Time.now, updated_at: Time.now)

publisher4 = Publisher.create!(name: "McSweeney's", created_at: Time.now, updated_at: Time.now)

#books

book1 = Book.create!(publisher: publisher1, title: "American Elf", isbn_10: "1-891-83085-6", isbn_13: "978-1-891830-85-3", publication_year: 2004, edition: "Book 2", price: 1000, image_url: "https://www.topshelfcomix.com/catalog/covers/american_elf_4_lg.jpg",created_at: Time.now, updated_at: Time.now)

book2 = Book.create!(publisher: publisher2, title: "Cosmoknights", isbn_10: "1-603-09454-7", isbn_13: "978-1-60309-454-2", publication_year: 2019, edition: "Book 1", price: 2000, image_url: "https://books.google.com.ph/books/publisher/content?id=ln6fDwAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U1R197Y8wwEXeilY8nMYgY-dABzGw&w=1280", created_at: Time.now, updated_at: Time.now)

book3 = Book.create!(publisher: publisher3, title: "Essex County", isbn_10: "1-603-09038-X", isbn_13: "978-1-60309-038-4", publication_year: 1990, price: 500, image_url: "https://books.google.com.ph/books/content?id=bvI9nOzxcwoC&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U3hKLO3Th53X60vGL3qSzFXgwvW2g&w=1280",created_at: Time.now, updated_at: Time.now)

book4 = Book.create!(publisher: publisher3, title: "Hey Mister (Vol 1)", isbn_10: "1-891-83002-3", isbn_13: "978-1-891830-02-0", publication_year: 2000, edition: "After School Special", price: 1200, image_url: "https://www.topshelfcomix.com/catalog/covers/afterschool_lg.jpg",created_at: Time.now, updated_at: Time.now)

book5 = Book.create!(publisher: publisher4, title: "The Underwater Welder", isbn_10: "1-603-09398-2", isbn_13: "978-1-60309-398-9", publication_year: 2004, edition: "Book 2", price: 1000, image_url: "../assets/the-underwater-welder.png",created_at: Time.now, updated_at: Time.now)

#authors

author1 = Author.create!(first_name: "Joel", last_name: "Hartse", created_at: Time.now, updated_at: Time.now)

author2 = Author.create!(first_name: "Hannah P.", last_name: "Templer", created_at: Time.now, updated_at: Time.now)

author3 = Author.create!(first_name: "Marguerite Z.", last_name: "Duras", created_at: Time.now, updated_at: Time.now)

author4 = Author.create!(first_name: "Kingsley", last_name: "Amis", created_at: Time.now, updated_at: Time.now)

author5 = Author.create!(first_name: "Fannie Peters", last_name: "Flagg", created_at: Time.now, updated_at: Time.now)

author6 = Author.create!(first_name: "Camille Byron", last_name: "Paglia", created_at: Time.now, updated_at: Time.now)

author7 = Author.create!(first_name: "Rainer Steel", last_name: "Rilke", created_at: Time.now, updated_at: Time.now)

#joiners (datasets association)

joiner1 = Joiner.create!(book: book1, author: author1, created_at: Time.now, updated_at: Time.now)

joiner2 = Joiner.create!(book: book1, author: author2, created_at: Time.now, updated_at: Time.now)

joiner3 = Joiner.create!(book: book1, author: author3, created_at: Time.now, updated_at: Time.now)

joiner4 = Joiner.create!(book: book2, author: author4, created_at: Time.now, updated_at: Time.now)

joiner5 = Joiner.create!(book: book3, author: author4, created_at: Time.now, updated_at: Time.now)

joiner6 = Joiner.create!(book: book4, author: author2, created_at: Time.now, updated_at: Time.now)

joiner7 = Joiner.create!(book: book4, author: author5, created_at: Time.now, updated_at: Time.now)

joiner8 = Joiner.create!(book: book4, author: author6, created_at: Time.now, updated_at: Time.now)

joiner9 = Joiner.create!(book: book5, author: author7, created_at: Time.now, updated_at: Time.now)








