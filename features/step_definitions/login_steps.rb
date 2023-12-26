# features/step_definitions/login_steps.rb

Given('navigate to SauceDemo login page') do
  visit('https://www.saucedemo.com')
end

When('client enter valid credentials') do
  fill_in 'user-name', with: 'standard_user'
  fill_in 'password', with: 'secret_sauce'
end

And('client click on the login button') do
  expect(page).to have_selector("input#login-button.submit-button.btn_action")
  click_button 'login-button'
end

Then('client should be redirected to the products page') do
  expect(page).to have_current_path('/inventory.html')
end