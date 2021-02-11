class NewUserEmailMailer < ApplicationMailer

    def notify_user(user)
        @name = user.first_name

        mail to: user.email, 
            subject: "Welcome to Finate!"
    end

end
