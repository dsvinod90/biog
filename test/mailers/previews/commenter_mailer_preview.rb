# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class CommenterMailerPreview < ActionMailer::Preview
	def welcome_email
		CommenterMailer.welcome_email(Comment.first)
	end
end
