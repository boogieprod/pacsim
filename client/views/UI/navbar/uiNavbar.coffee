Template.uiNavbar.helpers

  totalaftertax: ->
    total = 0
    CartItems.find().map (item) ->
      total += Math.round(item.productPrice + item.productPrice * QST + item.productPrice * GST)
    return total
