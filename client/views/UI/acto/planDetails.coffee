Template.planDetails.rendered = ->
  $('.ui.dropdown').dropdown()
  $('#progress-bar').progress
    percent: 70

Template.planDetails.helpers

  carriersims: ->
    SimCards.find(carRel: this.carRel)

Template.planDetails.events

  'click .add-to-cart-plan': (evt, tmpl) ->
    evt.preventDefault()
    $form = $('.ui.form')
    simsize = $form.form('get value', 'simsize')
    qty = Number(tmpl.find('.plan-qty').value)
    product = this._id
    productName = this.name
    mintopup = Number(this.mintopup)
    sessid = Meteor.default_connection._lastSessionId
    sim = SimCards.find({pacsimId: simsize}).map (sim) ->
      return sim.price
    simPrice = Number(sim * qty)
    ppdPrice = (mintopup * qty)
    productPrice = (simPrice + ppdPrice)
    if simsize == ""
      sAlert.error(TAPi18n.__ 'must_select_simsize')
      $('#sim-size-selection').addClass('error')
      return
    else if qty < 1
      sAlert.error(TAPi18n.__ 'qty_set_0_or_less')
      $(tmpl.find('plan-qty')).val("1")
      return
    else if qty > 9
      sAlert.error(TAPi18n.__ 'qty_set_10_or_more')
      $(tmpl.find('plan-qty')).val("9")
      return
    else
      console.log qty + product + productPrice + mintopup + simPrice + ppdPrice
      CartItems.insert {qty: qty, product: product, sessid: sessid, productName: productName, productPrice: productPrice}

  'change #sim-size-selection': (evt, tmpl) ->
    evt.preventDefault()
    $('#sim-size-selection').removeClass('error')
