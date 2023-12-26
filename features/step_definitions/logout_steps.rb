When('client logout') do
  find("#react-burger-menu-btn").click

  expect(page).to have_selector("#logout_sidebar_link")

  find("#logout_sidebar_link").click
  expect(page).to have_text("Swag Labs")
end

When('client navigate to homepage') do
  expect(page).to have_text("Swag Labs")
end

