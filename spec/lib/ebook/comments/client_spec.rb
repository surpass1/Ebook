module Ebook
	module Comment
		class Client
			attr_reader :url
			def initialize url
				@url = url
				
			end
		end
	end
end
describe Ebook::Comment::Client do
	describe "#initialize" do
		it "stores the URL" do
			client = Ebook::Comment::Client.new 'http://localhost/comments/feed'
			expect(client.url).to eq 'http://localhost/comments/feed'
		end
	end	
end