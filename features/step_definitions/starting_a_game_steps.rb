Given(/^I am on the homepage$/) do
  visit '/' 
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content? arg1 
end

Then(/^I enter "(.*?)"$/) do |arg1|
  fill_in("name", :with => arg1) 
end

Then(/^I shall be redirected to confirm page$/) do
  visit('/confirm')
end

Then(/^I shall see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end