require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all




movie1 = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
movie2 = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7,)
movie3 = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
movie4 = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)


file1 = URI.open(movie1.poster_url)
file2 = URI.open(movie2.poster_url)
file3 = URI.open(movie3.poster_url)
file4 = URI.open(movie4.poster_url)
#List name and id

movie1.photo.attach(io: file1, filename: "nes1.png", content_type: "image/png")
movie1.save
movie2.photo.attach(io: file2, filename: "nes2.png", content_type: "image/png")
movie2.save
movie3.photo.attach(io: file3, filename: "nes3.png", content_type: "image/png")
movie3.save
movie4.photo.attach(io: file4, filename: "nes4.png", content_type: "image/png")
movie4.save
Movie.create(title: "The God Father", overview: "Mafia movie", rating: 9.9)



list1 = List.create(name: "My Favorites movies")
list2 = List.create(name: "Real Stories")

list_file_1 = URI.open("https://images.unsplash.com/photo-1485846234645-a62644f84728?q=80&w=2059&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
list_file_2 = URI.open("https://images.unsplash.com/photo-1485846234645-a62644f84728?q=80&w=2059&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

list1.photo.attach(io: list_file_1, filename:"listphoto.png", content_type: "image/png")
list1.save
list2.photo.attach(io: list_file_2, filename:"listphoto.png", content_type: "image/png")
list2.save


Bookmark.create(comment: "Good movie, its works", movie: movie1, list:list1)

Bookmark.create(comment: "Good movie, its works", movie: movie3, list:list1)
Bookmark.create(comment: "Good movie, its works", movie: movie4, list:list1)



Bookmark.create(comment: "Good movie, its works", movie: movie1, list:list2)

Bookmark.create(comment: "Good movie, its works", movie: movie3, list:list2)
Bookmark.create(comment: "Good movie, its works", movie: movie4, list:list2)
