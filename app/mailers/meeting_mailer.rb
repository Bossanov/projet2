class MeetingMailer < ApplicationMailer

  def creation_confirmation(meeting)
    @meeting = meeting
    miresult = Profile.where(maildest: @meeting.destinataire)
    result = User.where(id: miresult.first.user_id)

    mail(
      # to:       @meeting.destinataire.email,
      to:       result.first.email,
      subject:  "DESTINATAIRE TO BE CHANGED: Nouveau rdv depuis Handipulse"
    )
  end
end
