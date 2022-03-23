class WelcomeMailer < ApplicationMailer
	def welcome_send(user)
		@user = user
		mail to: user.email, subject: "You are Registered successfully", from:'ks2956831@gmail.com'
    end
end
