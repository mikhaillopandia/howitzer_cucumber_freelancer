#############################################################
#                      PREREQUISITES                        #
#############################################################

# rubocop:disable Style/SymbolProc
Given /^(.+) page of web application$/ do |page|
  page.open
end

Given /^I am user$/ do
  @user = create(:user)
end

Given /^I am logged in as admin user$/ do
  @user = create(:user, :admin)
  sleep 10
  LoginPage.open
  LoginPage.on { login_as(out(:@user).email, out(:@user).password) }
end

####################################
#              ACTIONS             #
####################################

When /^I click (.+?) menu item on (.+) page$/ do |text, page|
  page.on { main_menu_section.choose_menu(text.split.map(&:capitalize)*' ') }
end

When /^I submit form on (.+) page$/ do |page|
  page.on { submit_form }
  end

When /^I navigate to (.+) page$/ do |page|
  page.open
end

####################################
#              CHECKS              #
####################################


Then /^(?!blank)(.+) page should be displayed$/ do |page|
  expect(page).to be_displayed
end

Then /^(?!blank)(.+) page should not be displayed$/ do |page|
  expect(page).not_to be_displayed
end

Then /^I should be redirected to (.+) page$/ do |page|
  expect(page).to be_displayed
end

Then /^I should see following text on (.+) page:$/ do |page, string|
  page.on { expect(text).to include(string) }
end

Then /^I should not be logged in the system$/ do
  expect(SignUpPage).to be_displayed

end

Then /^I should be logged in the system$/ do
  expect(DashboardPage).to be_authenticated
end
