class EmployeeMailer < ApplicationMailer
default from: 'avihalve@gmail.com'

def welcome_email
    @employee = params[:employee]
    #@url  = 'http://example.com/login'
    mail(to: @employee.email, subject: 'Alloted you a new seat')
end

end
