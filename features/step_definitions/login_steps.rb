# features/step_definitions/login_steps.rb

Given('navigate to SauceDemo login page') do
  visit('https://www.saucedemo.com')
  expect(page).to have_text("Swag Labs")
end

When('client enter valid credentials') do
  fill_in 'user-name', with: 'locked_out_user'
  fill_in 'password', with: 'secret_sauce'
end

And('client click on the login button') do
  expect(page).to have_selector("input#login-button.submit-button.btn_action")
  click_button 'login-button'
end

Then('client should be redirected to the products page') do
  expect(page).to have_current_path('/inventory.html')
end

Given('alert locked appears') do
  expect(page).to have_selector("svg.fa-times-circle.error_icon")
  expect(page).to have_text("Epic sadface: Sorry, this user has been locked out.")
end

Given('alert wrong password appears') do
  expect(page).to have_selector("svg.fa-times-circle.error_icon")
  expect(page).to have_text("Epic sadface: Username and password do not match any user in this service")
end