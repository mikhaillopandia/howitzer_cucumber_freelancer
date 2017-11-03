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

####################################
#              CHECKS              #
####################################

Then /^I should receive (.+) email$/ do |email|
  email.as_email_class.find_by_recipient(@user.email)
end