class Contact < MailForm::Base
  attribute :first_name,      :validate => true
  attribute :last_name,       :validate => true
  attribute :phone_number,    :validate => true
  attribute :email,           :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Un nouveau message depuis Handipusle",
      :to => "antoine.staumont@gmail.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end
end
