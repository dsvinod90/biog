class DownloadsController < ApplicationController
	def download_resume
		send_file "#{Rails.root}/public/resume.pdf", type: "application/pdf", x_sendfile: true
	end
end
