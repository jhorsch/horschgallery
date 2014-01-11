
class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome(user)
    @user = user
    mail to: user.email_adress, subject: "HorschGallery.com Order# 4560"
  end

end
