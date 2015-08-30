Template.totalBox.helpers

  subtotal: ->
    total = 0
    CartItems.find().map (item) ->
      total += item.productPrice
    return total

  canadiantaxes: ->
    total = 0
    CartItems.find().map (item) ->
      total += Math.round(item.productPrice * GST)
    return total

  provincialtaxes: ->
    total = 0
    CartItems.find().map (item) ->
      total += Math.round(item.productPrice * QST)
    return total

  totalaftertax: ->
    total = 0
    CartItems.find().map (item) ->
      cantaxamount = (item.productPrice * GST)
      provtaxamount = (item.productPrice * QST)
      total += (item.productPrice + provtaxamount + cantaxamount).toFixed(2)
    return total
