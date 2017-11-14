class ConfirmationInstructionEmail < Howitzer::Email
  subject 'Welcome to Freelancer.co.uk'

  def confirm_my_account
    ConfirmationEmailPage.open(validate: false, url_processor: InviteIdProcessor, token: token)
  end

  def confirmation_link
    res = plain_text_body[/Verify Your Email \((.+?)\)/, 1]
    Howitzer::Log.info('Confirmation link was not found') if res.nil?
    res
  end

  def token
    confirmation_link[/token=(.+)/, 1]
  end
end
