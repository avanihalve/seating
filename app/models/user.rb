class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {employee: 0, hr: 1}

 after_create :welcome_send
    def welcome_send
      WelcomeMailer.welcome_send(self).deliver
      #redirect_to root_path, alert: "thank you for the registration"
    end  

  #rails g mailer welcome_mailer
  # user model, after create def send_mail
  # def send_mail
  #  WelcomeMailer.send_mail(self).deliver

end
