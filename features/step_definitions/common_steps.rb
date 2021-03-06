#############################################################
#                      PREREQUISITES                        #
#############################################################

# rubocop:disable Style/SymbolProc
Given '{page} page of web application' do |page|
  page.open
end

Given 'I am user' do
  @user = create(:user)
end

####################################
#              ACTIONS             #
####################################

When 'I click {menu item} menu item on {page} page' do |text, page|
  page.on { main_menu_section.choose_menu(text) }
end

When 'I submit form on {page} page' do |page|
  page.on { submit_form }
end

When 'I navigate to {page} page' do |page|
  page.open
end

####################################
#              CHECKS              #
####################################

Then 'I should be redirected to {page} page' do |page|
  expect(page).to be_displayed
end

Then 'I should see following text on {page} page:' do |page, string|
  page.on { wait_for(text).to include(string) }
end

Then 'I should not be logged in the system' do
  expect(SignUpPage).to be_displayed
end

Then 'I should be logged in the system' do
  DashboardPage.on { is_expected.to have_no_main_menu_section }
end
