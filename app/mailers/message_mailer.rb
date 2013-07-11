class MessageMailer < ActionMailer::Base

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_message.subject
  #
  def send_message(message)
    @body = message.content
    @from = message.email
    @name = message.name
    @phone_number = message.phone_number

    mail to: "support@hallandjohnsonllp.com", :subject => "new mail from #{message.name} - hall and johnson", :from => message.email
  end
end
