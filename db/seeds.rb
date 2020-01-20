# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = HTTParty.get(
            "https://api.themoviedb.org/3/movie/upcoming?api_key=df7d7dd447e9d694440b01b42db6a9f0&language=en-US",
            # "https://api.themoviedb.org/3/movie/upcoming?api_key=#{MOVIES_KEY}&language=en-US",
            # "https://api.themoviedb.org/3/movie/550?api_key=df7d7dd447e9d694440b01b42db6a9f0"
        )

movies = response["results"]

movies.each do |m|
    Movie.create([ m ])
end