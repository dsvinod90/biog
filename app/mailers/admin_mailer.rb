class AdminMailer < ApplicationMailer
	default from: 'admin@vinoddalavai.me'

	def notify_email(user_comment)
		@commenter_name = user_comment.name
		@commented_article_title = user_comment.article.title
		@comment_added = user_comment.comment 
		mail(to: Rails.application.secrets[:admin_email_id], subject: 'You have a comment')
	end
end
