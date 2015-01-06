Given(/^I am on the homepage$/) do
  visit '/' # express the regexp above with the code you wish you had
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1# express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content? arg1 # express the regexp above with the code you wish you had
end