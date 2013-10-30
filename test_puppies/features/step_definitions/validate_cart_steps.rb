
Then(/^I should see "([^"]*)" as the name for line item (\d+)$/) do |name, line_item|
 fail unless cart_line_item(line_item.to_i)[1].text.should include name
end
When(/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |subtotal, line_item|
  fail unless cart_line_item(line_item.to_i)[3].text.should == subtotal
end
When(/^I should see "([^"]*)" as the cart total$/) do |total|
  fail unless @browser.td(:class => 'total_cell').text.should == total
end
=begin

When(/^I should see "([^"]*)" as the name for line item 2$/) do |name2|
  fail unless @browser.table(:index =>0)[6][1].text.should include name2
end
When(/^I should see "([^"]*)" as the subtotal for line item 2$/) do |subtotal2|
  fail unless @browser.table(:index=>0)[6][3].text.should == subtotal2
end
=end

def row_for(line_item)
   (line_item-1)*6
end

def cart_line_item(line_item)
 @browser.table(:index =>0)[(row_for(line_item))]
end
