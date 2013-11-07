class ShoppingCartPage
  include PageObject

  NAME_COLUMN = 1
  SUBTOTAL_COLUMN = 3
  LINES_PER_PUPPY = 6

  button(:complete_the_adoption, :value => 'Complete the Adoption' )
  button(:adopt_another_puppy, :value => 'Adopt Another Puppy')
  table(:cart, :index => 0)
  cell(:cart_total, :class => 'total_cell')


  def adopt_another_puppy_now
    self.adopt_another_puppy
  end

  def proceed_to_check_out
    self.complete_the_adoption
  end

  def name_for_line_item(line_item)
    cart_line_item(line_item)[NAME_COLUMN]
  end

  def subtotal_for_line(line_item)
    cart_line_item(line_item)[SUBTOTAL_COLUMN]
  end



  private
  def row_for(line_item)
    (line_item-1)*LINES_PER_PUPPY
  end

  def cart_line_item(line_item)
    @browser.table(:index =>0)[(row_for(line_item))]
  end

end