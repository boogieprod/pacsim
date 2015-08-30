Template.customerForm.rendered = ->
  $('.ui.dropdown').dropdown()
  $('#progress-bar').progress
    percent: 100

Template.customerForm.helpers
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
      cantaxamount = Math.round(item.productPrice * GST)
      provtaxamount = Math.round(item.productPrice * QST)
      total += Math.round(item.productPrice + provtaxamount + cantaxamount)
    return total

  'provinces': ->
    [
      {
        'name': ->
          TAPi18n.__ 'qc'
        'id': 1
      }
      {
        'name': 'Ontario'
        'id': 2
      }
      {
        'name': ->
          TAPi18n.__ 'bc'
        'id': 3
      }
    ]

Template.customerForm.events

  "click .make-payment": (evt, tmpl) ->
    evt.preventDefault()
    $form = $('.ui.form')
    fname = $form.form('get value', 'fname')
    lname = $form.form('get value', 'lname')
    email = $form.form('get value', 'email')
    street = $form.form('get value', 'street')
    postal = $form.form('get value', 'postal')
    prov = $form.form('get value', 'province')
    areac = $form.form('get value', 'areacode')
    agree = $form.form('get value', 'agreement')
    if agree != true or fname[0].length < 1 or lname[0].length < 1 or email[0].length < 1 or areac[0] == ""
      if agree != true and fname[0].length < 1 and lname[0].length < 1 and email[0].length < 1 and areac[0] == ""
        sAlert.error(TAPi18n.__ 'fields_with_asterix_mandatory')
        $('#agreement-field').addClass('error')
        $('#fname-field').addClass('error')
        $('#lname-field').addClass('error')
        $('#email-field').addClass('error')
        $('#areacode-field').addClass('error')
      else if agree != true
        sAlert.error(TAPi18n.__ 'must_review_terms')
        $('#agreement-field').addClass('error')
      else if fname[0].length < 1
        sAlert.error(TAPi18n.__ 'fname_mandatory')
        $('#fname-field').addClass('error')
      else if lname[0].length < 1
        sAlert.error(TAPi18n.__ 'lname_mandatory')
        $('#lname-field').addClass('error')
      else if email[0].length < 1
        sAlert.error(TAPi18n.__ 'email_mandatory')
        $('#email-field').addClass('error')
      else if areac[0] == ""
        sAlert.error(TAPi18n.__ 'areac_mandatory')
        $('#areacode-field').addClass('error')
    else
      console.log "Everything's filled"

  "change #agreement-field": (evt, tmpl) ->
    $('#agreement-field').removeClass('error')

  "focus #fname-field": (evt, tmpl) ->
    $('#fname-field').removeClass('error')

  "focus #lname-field": (evt, tmpl) ->
    $('#lname-field').removeClass('error')

  "focus #email-field": (evt, tmpl) ->
    $('#email-field').removeClass('error')

  "focus #areacode-field": (evt, tmpl) ->
    $('#areacode-field').removeClass('error')

  "click #reset-button": (evt, tmpl) ->
    evt.preventDefault()
    $('form#customer-form').form('clear')
