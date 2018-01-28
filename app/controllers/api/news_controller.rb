require 'will_paginate/array'

class Api::NewsController < ApplicationController

	def index
		@channel = 'techradar,crypto-coins-news,hacker-news,techcrunch,engadget,recode'
		@headlines = (Api::News.top_headlines(@channel))['articles'].paginate(:page => params[:page], :per_page => 8)
	end
end 