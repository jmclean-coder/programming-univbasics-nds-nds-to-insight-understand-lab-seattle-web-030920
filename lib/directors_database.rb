require 'yaml'
require 'pry'
def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

# spielberg_movies = directors_database[0][:movies]
# row_index = 0
# while row_index < spielberg_movies.length do
# 	binding.pry
# 	row_index += 1
# end
