class WelcomeMailer < ApplicationMailer
	def welcome_send(user)
		@user = user
		mail to: user.email, subject: "You are Registered successfully", from:'avihalve@gmail.com'
    end
end
