class ApplyseatMailer < ApplicationMailer
	def send_apply_mail
       
		@employee = params[:employee]
		mail(to: "avihalve@gmail.com", from: @employee.email, subject:"Query Mail")
    end
end