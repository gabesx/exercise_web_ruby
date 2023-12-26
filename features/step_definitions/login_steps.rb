# features/step_definitions/login_steps.rb

Given('navigate to SauceDemo login page') do
  visit('https://www.saucedemo.com')
  expect(page).to have_text("Swag Labs")
end

When('client login using {string}') do |user_type|
  username, password = credentials_for(user_type)

  fill_in 'user-name', with: username
  fill_in 'password', with: password
end

And('client click on the login button') do
  expect(page).to have_selector("input#login-button.submit-button.btn_action")
  click_button 'login-button'
end

Then('client should be redirected to the products page') do
  expect(page).to have_current_path('/inventory.html')
end

Then('all product items should be displayed on the products page') do
  expect(page).to have_current_path('/inventory.html')

  expect(page).to have_xpath("//div[@class='inventory_list']")

  within(:xpath, "//div[@class='inventory_list']") do
    expect(page).to have_xpath(".//div[@class='inventory_item']", count: 6)

    expect(page).to have_xpath(".//div[contains(text(), 'Sauce Labs Backpack')]")
    expect(page).to have_xpath(".//div[contains(text(), 'Sauce Labs Bike Light')]")

    expect(page).to have_xpath(".//button[text()='Add to cart']", count: 6)
  end
end

Given('alert locked appears') do
  expect(page).to have_selector("svg.fa-times-circle.error_icon")
  expect(page).to have_text("Epic sadface: Sorry, this user has been locked out.")
end

Given('alert wrong password appears') do
  expect(page).to have_selector("svg.fa-times-circle.error_icon")
  expect(page).to have_text("Epic sadface: Username and password do not match any user in this service")
end

Given('alert empty credential appears') do
  expect(page).to have_selector("svg.fa-times-circle.error_icon")
  expect(page).to have_text("Swag Labs\nEpic sadface: Username is required\nAccepted usernames are:\nstandard_user\nlocked_out_user\nproblem_user\nperformance_glitch_user\nerror_user\nvisual_user\nPassword for all users:\nsecret_sauce")
end