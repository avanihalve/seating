class WelcomeMailer < ApplicationMailer
	def welcome_send(user)
		@user = user
		mail to: user.email, subject: "welcome to my site", from:'ks2956831@gmail.com'
    end
end
