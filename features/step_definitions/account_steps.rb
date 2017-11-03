####################################
#              ACTIONS             #
####################################

When /^I confirm sing up from (.+) email$/ do |email|
  email.as_email_class.find_by_recipient(@user.email).confirm_my_account
end

When /^I confirm employer sing up from (.+) email$/ do |email|
  email.as_email_class.find_by_recipient(@user.email).confirm_my_employer_account
end

When /^I select (.+) on (.+) page$/ do |what, page|
  page.on { looking_to_hire_radio_element.click }
end

When /^I fill form on sign up page with blank data$/ do
  SignUpPage.on { fill_form }
end


When /^I fill form on sign up page with new data$/ do
  @user = build(:user)
  SignUpPage.on do
    fill_form(username: out(:@user).name,
              email: out(:@user).email,
              password: out(:@user).password,
              looking_for_work_radio: out(:@user).looking_for_work_radio
              )
  end
end

When /^I fill form on sign up page with not email data$/ do
  @user = build(:user)
  SignUpPage.on do
    fill_form(username: out(:@user).name,
              email: 'test.123456789',
              password: out(:@user).password,
              looking_for_work_radio: out(:@user).looking_for_work_radio
              )
  end
end

When /^I fill form on sign up page with short password/ do
  @user = build(:user)
  SignUpPage.on do
    fill_form(username: out(:@user).name,
              email: out(:@user).email,
              password: '1',
              looking_for_work_radio: out(:@user).looking_for_work_radio
    )
  end
end

####################################
#              CHECKS              #
####################################

Then /^I should receive (.+) email$/ do |email|
  email.as_email_class.find_by_recipient(@user.email)
end