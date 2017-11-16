####################################
#              ACTIONS             #
####################################

When /^I confirm sing up from (.+) email$/ do |email|
  email.as_email_class.find_by_recipient(@user.email).confirm_my_account
end

When /^I confirm employer sing up from (.+) email$/ do |email|
  email.as_email_class.find_by_recipient(@user.email).confirm_my_employer_account
end

When /^I select (.+) on (.+) page$/ do |_what, page|
  page.on { looking_to_hire_radio_element.click }
end

When /^I fill form on sign up page with blank data$/ do
  SignUpPage.on do
    fill_form(username: nil,
              email: nil,
              password: nil,
              looking_for: nil)
  end
end

When /^I fill form on sign up page with new correct data$/ do
  @user = build(:user)
  SignUpPage.on do
    fill_form(username: out(:@user).name,
              email: out(:@user).email,
              password: out(:@user).password,
              looking_for: out(:@user).looking_for)
  end
end

When /^I fill form on sign up page with incorrect data$/ do
  SignUpPage.on do
    fill_form(username: '1',
              email: 'test.123456789',
              password: '1',
              looking_for: 'work')
  end
end

####################################
#              CHECKS              #
####################################

Then /^I should receive (.+) email$/ do |email|
  email.as_email_class.find_by_recipient(@user.email)
end

Then /^I should see following messages on (.+) page:$/ do |page, table|
  str = table.raw.map(&:first)
  page.on do
    wait_for(text).to include(str.compact.join(' '))
  end
end
