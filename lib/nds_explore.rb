$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

pretty_print_nds(directors_database)



def print_first_directors_movie_titles
  spielberg_movies = directors_database[0][:movies]
  row_index = 0
  while row_index < spielberg_movies.length do
    element_key = :title
      puts spielberg_movies[row_index][element_key]
    row_index += 1
  end
end
