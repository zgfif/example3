json.authors do
	json.array!(@authors) do |author|
		json.name author.name+" "+author.surname
		json.url author_path(author)
	end
end

json.books do
	json.array!(@books) do |book|
		json.name book.title
		json.url book_path(book)
	end
end

json.locations do
	json.array!(@locations) do |location|
		json.name location.name
		json.url location_path(location)
	end
end

json.genres do
	json.array!(@genres) do |genre|
		json.name genre.genre_name
		json.url genre_path(genre)
	end
end

 # unless @users.nil?

	json.users do
		json.array!(@users) do |user|
			json.name user.email
			json.url user_path(user)
		end
	end

# end