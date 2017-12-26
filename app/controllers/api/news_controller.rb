require 'will_paginate/array'

class Api::NewsController < ApplicationController
	layout 'welcome'

	def index
		@channel = 'techradar,crypto-coins-news,hacker-news,techcrunch,engadget,recode'
		@headlines = (Api::News.top_headlines(@channel))['articles'].paginate(:page => params[:page], :per_page => 5)
	end
end 