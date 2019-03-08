# Preview all emails at http://localhost:3000/rails/mailers/meeting_mailer
class MeetingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/meeting_mailer/creation_confirmation
  def creation_confirmation
    MeetingMailer.creation_confirmation
  end

end
