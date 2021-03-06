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
  fill_in("user", :with => arg1) 
end

Then(/^I shall be redirected to "(.*?)"$/) do |arg1|
  visit(arg1)
end

Then(/^I shall see "(.*?)"$/) do |arg1|
  page.has_content? arg1 
end

When(/^I click submit without entering a name$/) do
  fill_in("user", :with => "") 
end

When(/^I click submit$/) do
  click_button('Please Go Back')
end

Given(/^I am on the Start page$/) do
  visit '/start'
end

Then(/^I enter a ship on coordinate "(.*?)"$/) do |arg1|
  fill_in("coordinate", :with => arg1 )
end