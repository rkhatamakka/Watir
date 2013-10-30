class ShoppingCartPage
  def initialize(browser)
    @browser = browser
  end

  def name_for_line_item(line_item)
    cart_line_item(line_item)[1]
  end

  def subtotal_for_line(line_item)
    cart_line_item(line_item)[3]
  end

  def cart_total
    @browser.td(:class => 'total_cell').text
  end

  def proceed_to_check_out
    @browser.button(:value=> 'Complete the Adoption').click
  end

  def continue_shopping
    @browser.button(:value => 'Adopt Another Puppy').click
  end

  def name=(name)
    @browser.text_field(:id=> 'order_name').set(name)
  end

  def address=(address)
    @browser.text_field(:id=> 'order_address').set(address)
  end

  def email=(email)
    @browser.text_field(:id=> 'order_email').set(email)
  end

  def pay_type=(pay_type)
    @browser.select_list(:id=> 'order_pay_type').select(pay_type)
  end

  private
  def row_for(line_item)
    (line_item-1)*6
  end

  def cart_line_item(line_item)
    @browser.table(:index =>0)[(row_for(line_item))]
  end

end