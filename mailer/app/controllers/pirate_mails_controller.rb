class PirateMailsController < ApplicationController

  # def index
  # end

  def show
    @pirateMail = PirateMail.find(params[:id])
  end
  
  def new
  end

  # def edit
  # end
  
  def create
    @pirateMail = PirateMail.new(pirate_mail_params)
 
    @pirateMail.save
    redirect_to @pirateMail
  end
  
  # def update
  # end
  
  # def destroy
  # end

  def resend
    @pirateMail = PirateMail.find(params[:id])

    UserMailer.with(pirate_mail: @pirateMail).welcome_email.deliver_now  
  end

  private
    def pirate_mail_params
      params.require(:pirate_mail).permit(:subject, :body)
    end
  
end
