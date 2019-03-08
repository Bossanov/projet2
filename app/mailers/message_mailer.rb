class MessageMailer < ApplicationMailer

  def creation_confirmation(message)
    @message = message
    miresult = Profile.where(maildest: @message.destinataire)
    result = User.where(id: miresult.first.user_id)

    mail(
      # to:       @message.destinataire.email,
      to:       result.first.email,
      subject:  "Vous avez un message d'Handipulse"
    )
  end
  def mail_admin_review(admin)
    address = admin
    mail(to:       address,
      subject:  "Handipulse vous signale la création d'un témoignage.")

  end
end
