Template.addToCart.events
  'click .add-to-cart': (evt, tmpl) ->
    qty = Number(tmpl.find('.prod-qty').value)
    product = this._id
    productName = this.name
    productPrice = Number(this.price * qty)
    sessid = Meteor.default_connection._lastSessionId
    productAlreadyInCart = CartItems.find({product: product}).count() > 0
    if productAlreadyInCart == true
      if (qty < 1)
        sAlert.error(TAPi18n.__ 'qty_set_0_or_less')
        $(tmpl.find('.prod-qty')).val("1")
        return
      else if (qty >= 10)
        sAlert.error(TAPi18n.__ 'qty_set_10_or_more')
        $(tmpl.find('.prod-qty')).val("9")
        return
      else
        newqty = Number(qty)
        newprice = Number(productPrice)
        CartItems.update {product: product}, {$inc: {qty: newqty}}
        CartItems.update {product: product}, {$inc: {productPrice: newprice}}
        $('.shopping-cart').transition 'jiggle'
    else if (qty < 1)
      sAlert.error(TAPi18n.__ 'qty_set_0_or_less')
      $(tmpl.find('.prod-qty')).val("1")
      return
    else if (qty >= 10)
      sAlert.error(TAPi18n.__ 'qty_set_10_or_more')
      $(tmpl.find('.prod-qty')).val("9")
      return
    else
      CartItems.insert {qty: qty, product: product, sessid: sessid, productName: productName, productPrice: productPrice}
      $('.shopping-cart').transition 'jiggle'
      return

  "click .add-to-cart-checkout": (evt, tmpl) ->
    qty = Number(tmpl.find('.prod-qty').value)
    product = this._id
    productName = this.name
    productPrice = Number(this.price * qty)
    sessid = Meteor.default_connection._lastSessionId
    productAlreadyInCart = CartItems.find({product: product}).count() > 0
    if productAlreadyInCart == true
      newqty = Number(qty)
      newprice = Number(productPrice)
      CartItems.update {product: product}, {$inc: {qty: newqty}}
      CartItems.update {product: product}, {$inc: {productPrice: newprice}}
      Router.go('customerForm')
    else if (qty <= 0)
      sAlert.error(TAPi18n.__ 'qty_set_0_or_less')
      $(tmpl.find('.prod-qty')).val("1")
      return
    else if (qty >= 10)
      sAlert.error(TAPi18n.__ 'qty_set_10_or_more')
      $(tmpl.find('.prod-qty')).val("9")
      return
    else
      CartItems.insert {qty: qty, product: product, sessid: sessid, productName: productName, productPrice: productPrice}
      Router.go('customerForm')
      return
