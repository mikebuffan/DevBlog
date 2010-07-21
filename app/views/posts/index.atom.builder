atom feed do |feed|
	feed.title("My great blog!")
	feed.updated(@posts.first.created_at)
	
	@posts.each do |post|
		feed.entry(post) do |entry|
			entry.title(post.ttitle)
			entry.content(post.body, :type => 'html')
			entry.author { |author| author.name("Mike Buffan") }
		end
	end
end