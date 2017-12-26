class Api::News
	include HTTParty

	BASE_URL = 'https://newsapi.org/v2/top-headlines?'
	API_PARTIAL_URL = "&apiKey=#{Rails.application.secrets.news_api_key}"

	def self.top_headlines(channel)
		request = HTTParty.get(BASE_URL+"sources=#{channel}"+API_PARTIAL_URL)
	end
end