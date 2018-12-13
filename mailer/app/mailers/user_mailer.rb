class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @pirateMail = params[:priate_mail]
    mail(to:'computercampluv@gamil.com', subject: @pirateMail.subject)
  end

end
