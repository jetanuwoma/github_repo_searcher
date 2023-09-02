Given("I am on the homepage") do
  visit root_path
end

When(/^I fill in "(.*?)" with "(.*?)" and press "(.*?)"$/) do |field, value, button|
  fill_in(field, with: value)
  click_button(button)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end