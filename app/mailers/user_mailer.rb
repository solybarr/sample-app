class UserMailer < ApplicationMailer
	default from: "solybarr@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
      :to => 'solybarr@gmail.com',
      :subject => "A new, contact form message from #{name}")
  end
end
