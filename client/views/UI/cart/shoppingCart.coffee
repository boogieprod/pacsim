Template.shoppingCart.helpers
  carttotalitems: ->
    total = 0
    CartItems.find().map (item) ->
      total += Number(item.qty)
    return total

  cartitems: ->
    CartItems.find().fetch()

Template.shoppingCart.events
  "click .removeCartItem": (evt, tmpl) ->
    product = this._id
    CartItems.remove({_id: product})
    return

  "click .clearCart": (evt, tmpl) ->
    evt.preventDefault()
    if CartItems.find().count() is 0
      sAlert.error(TAPi18n.__ 'clear_cart_zero_items')
    else
      SemanticModal.confirmModal {
        header: ->
          TAPi18n.__ 'clear_cart_header'
        message: ->
          TAPi18n.__ 'clear_cart_message'
        callback: ->
          CartItems.remove({})
          return

      }, ->
        console.log 'The modal has just been shown'
        return
      return

  "click .proceed-to-checkout": (evt, tmpl) ->
    evt.preventDefault()
    if (CartItems.find().count() == 0)
      sAlert.error(TAPi18n.__ 'item_0_when_checkout')
    else
      console.log('Going to checkout...')
      Router.go('customerForm')

  "click .continue-shopping": (evt, tmpl) ->
    Router.go('productSelection')

  "change .shop-cart-input-qty": (evt, tmpl) ->
    evt.preventDefault()
    initqty = this.qty
    qty = $(evt.target).val()
    productPricing = this.productPrice
    adjPrice = Number(productPricing / initqty)
    if qty <= 0
      sAlert.error(TAPi18n.__ 'qty_adjusted_10_or_less')
      $(evt.target).val("1")
      CartItems.update(this._id,{$set:{productPrice: (1 * adjPrice)}})
      CartItems.update(this._id,{$set:{qty: 1}})
    else if qty >= 10
      sAlert.error(TAPi18n.__ 'qty_set_10_or_more')
      $(evt.target).val("9")
      CartItems.update(this._id,{$set:{productPrice: (9 * adjPrice)}})
      CartItems.update(this._id,{$set:{qty: 9}})
    else
      CartItems.update(this._id,{$set:{qty: (qty)}})
      CartItems.update(this._id,{$set:{productPrice: (qty * adjPrice)}})
