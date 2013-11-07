  Given /^I am on the puppy adoption site$/ do
    @browser.goto "http://puppies.herokuapp.com"
    #@home = HomePage.new(@browser)
  end

  When(/^I click the First View Details button$/) do
    on(HomePage).select_puppy_number(1)
    #@details = DetailsPage.new(@browser)
  end

  When(/^I click the Adopt Me button$/) do
   on(DetailsPage).adopt_me_now
  end

  When(/^I click the Adopt Another Puppy button$/) do
  on(ShoppingCartPage).adopt_another_puppy_now
  end

  When(/^I click the Second View Details button$/) do
    on(HomePage).select_puppy_number(2)
  end

  When(/^I click the Complete the Adoption button$/) do
    on(ShoppingCartPage).proceed_to_check_out
  end
  When(/^I enter "([^"]*)" in the name field$/) do |name|
    on(CheckOutPage).name = name
  end
  When(/^I enter "([^"]*)" in the address field$/) do |address|
    on(CheckOutPage).address = address
  end
  When(/^I enter "([^"]*)" in the email field$/) do |email|
    on(CheckOutPage).email = email
  end
  When(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
    on(CheckOutPage).pay_type = pay_type
  end
  When(/^I click the Place Order button$/) do
    on(CheckOutPage).place_order_now
  end
  Then(/^I should see "([^"]*)"$/) do |expected|
    fail unless @browser.text.include? expected
  end

