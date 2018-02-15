class CommenterMailer < ApplicationMailer
	default from: 'admin@vinoddalavai.me'

	def welcome_email(user_comment)
		@commenter_name = user_comment.name
		@commenter_email = user_comment.email
		@commented_article = user_comment.article
		@commented_article_title = user_comment.article.title
		@comment_added = user_comment.comment 
		mail(to: @commenter_email, subject: 'You have commented on an article')
	end
end
