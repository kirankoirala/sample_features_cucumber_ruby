Given(/^I have navigated to my test site$/) do
  visit_page(SamplePage)
end

When(/^the Home page loads$/) do

end

Then(/^the Sign In link appears on the Home page$/) do
  on(SamplePage) do |page|
    expect(page.sign_in_link_exist?).to be true
  end
end

When(/^I click the Sign In link$/) do
  on(SamplePage) do |page|
    page.sign_in_link_element.click
  end
end

Then(/^I am taken to the Sign In page$/) do
  expect(@browser.title).to eq('Login - My Store')
end


When(/^I enter an email address$/) do
  on(SamplePage).email_create ='abc@domain.com'
end

And(/^I click the Create New Account button$/) do
  on(SamplePage).create_account
end

Then(/^I am taken to the Create Account page$/) do
  expect(on(SamplePage).page_header).to eq('AUTHENTICATION')
end