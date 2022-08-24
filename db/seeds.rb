require 'rspotify'
require 'open-uri'
require 'json'
require 'nokogiri'

# ================================= Movies Start ==========================================
# today = Date.today
# today = today.strftime("%F")
# six_months = Date.today + 180
# six_months = six_months.strftime("%F")

# my_directors = ["Peyton Reed", "Thierry Binisti", "James Cameron", "Olivia Wilde", "Rian Johnson"]
# my_movies = []
# j = 1
# for i in 1..10
#   page = i
#   tmdb_api_upcoming_call = "https://api.themoviedb.org/3/discover/movie?api_key=#{ENV.fetch("tmdb_api_key")}&language=en-US&primary_release_date.gte=#{today}&primary_release_date.lte=#{six_months}&page=#{page}"
#   response = URI.open(tmdb_api_upcoming_call).read
#   results = JSON.parse(response)
#   movies = results["results"]
#   movies.each do |movie|
#     movie_id = movie["id"]
#     tmdb_api_credits_call = "https://api.themoviedb.org/3/movie/#{movie_id}/credits?api_key=#{ENV.fetch("tmdb_api_key")}&language=en-US"
#     credits_response = URI.open(tmdb_api_credits_call).read
#     credits_results = JSON.parse(credits_response)
#     movie_cast = credits_results["crew"]
#     movie_cast.each do |crew|
#       director = crew["name"] if crew["job"] == "Director"
#       if my_directors.include?(director)
#         mov = Movie.new
#         mov.name = movie["original_title"]
#         mov.release_date = movie["release_date"]
#         mov.description = movie["overview"]
#         mov.poster_url = "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
#         my_movies.push(mov)
#       end
#     end
#   end
# end

# my_movies.each do |movie|
#   p movie
# end
# ================================= Movies End ==========================================

# ================================= Albums Start ==========================================

# RSpotify.authenticate("9c4f0907d3714790a061805fc1301430", "318e8535fa704c37a62573152d9c4152")
# albums = RSpotify::Album.new_releases(limit: 50, country: "US")

# albums.each do |album|
#   p album
#   p album.release_date
#   p album.name
#   p album.artists[0].name
#   puts " "
# end

# my_artists = ["Rina Sawayama", "DJ Khaled", "Flamingo", "Tekkno", "Unleash", "Now Is", "Brian Eno", "Lou Reed"]
# my_albums = []

# for page in 1..11
#   i = 1
#   doc = Nokogiri::HTML(URI.open("https://www.albumoftheyear.org/upcoming/#{page}/"))
#   doc.search('.albumBlock').each do |link|
#     img = link.search('img').attr('data-srcset').value unless link.search('img').attr('data-srcset').nil?
#     img = img.split[0] unless img.nil?
#     date = link.search('.date').text.strip
#     date = Date.parse(date).strftime("%F") unless date.length.zero?
#     artist_title = link.search('.artistTitle').text.strip
#     album_title = link.search('.albumTitle').text.strip

#     unless date.nil? && artist_title.nil?
#       if my_artists.include?(artist_title)
#         album = Album.new
#         album.poster_url = img.nil? ? "" : img
#         album.release_date = date
#         album.name = album_title
#         my_albums.push(album)
#       end
#     end
#     break if i == 60

#     i += 1
#   end
# end

# my_albums.each do |album|
#   p album
# end

# ================================= Albums End ==========================================
