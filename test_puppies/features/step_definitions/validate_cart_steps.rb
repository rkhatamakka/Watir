
Then(/^I should see "([^"]*)" as the name for line item 1$/) do |name1|
 fail unless @browser.table(:index =>0)[0][1].text.should include name1
end
When(/^I should see "([^"]*)" as the subtotal for line item 1$/) do |subtotal1|
  fail unless @browser.table(:index =>0)[0][3].text.should == subtotal1
end
When(/^I should see "([^"]*)" as the cart total$/) do |total|
  fail unless @browser.td(:class => 'total_cell').text.should == total
end

When(/^I should see "([^"]*)" as the name for line item 2$/) do |name2|
  fail unless @browser.table(:index =>0)[6][1].text.should include name2
end
When(/^I should see "([^"]*)" as the subtotal for line item 2$/) do |subtotal2|
  fail unless @browser.table(:index=>0)[6][3].text.should == subtotal2
end