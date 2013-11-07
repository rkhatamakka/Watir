class CheckOutPage
  include PageObject
  text_field(:order_name, :id=> 'order_name')
  text_field(:order_address, :id => 'order_address')
  text_field(:order_email, :id => 'order_email')
  select_list(:order_pay_type, :id=>'order_pay_type')
  button(:place_order, :value=> 'Place Order')

  def name=(name)
      self.order_name = name
  end

  def address=(address)
    self.order_address = address
  end

  def email=(email)
    self.order_email = email
  end

  def pay_type=(pay_type)
    self.order_pay_type =pay_type
  end

  def place_order_now
    self.place_order
  end
end