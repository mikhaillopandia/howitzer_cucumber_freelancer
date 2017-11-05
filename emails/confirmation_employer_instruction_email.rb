class ConfirmationEmployerInstructionEmail < Howitzer::Email
  subject 'Complete your Freelancer registration with one click!'

  def  confirm_my_employer_account
    # Correct solution. Ask Roma about normalize_values for unicode
    ConfirmationEmployerEmailPage.open(validate: false, url_processor: InviteIdProcessor, token: token)
    # Hack
    # Capybara.current_session.visit(confirmation_link)
  end

  def confirmation_link
    res = plain_text_body[%r{(https://www.freelancer.co.uk/users/onverify.php?(?:.+))}, 1]
    Howitzer::Log.info('Confirmation link was not found') if res.nil?
    res
  end

  def token
    confirmation_link[/\?id=(.+)/, 1]
  end
end
