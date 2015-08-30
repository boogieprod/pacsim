Template.autoSurvey.rendered = ->
  $('.ui.dropdown').dropdown()
  $('.ui.accordion').accordion()
  $('#progress-bar').progress
    percent: 40
#  if PlanFilters.find().count() > 0

Template.autoSurvey.helpers

  minutescat: ->
    MinutesCategories.find()

  textcat: ->
    TextCategories.find()

  datacat: ->
    DataCategories.find()

  nandw: ->
    MinutesPeriodicity.find()

  canld: ->
    CanadianLd.find()

  usld: ->
    UsLd.find()

  intlld: ->
    IntlLd.find()

  vmail: ->
    VoiceMail.find()

  intltext: ->
    IntlText.find()

  picmessages: ->
    PhotoMessages.find()

  vidmessages: ->
    VideoMessages.find()

  inccalls: ->
    IncomingCalls.find()

  zrest: ->
    ZoneRestriction.find()

Template.autoSurvey.events
  'click .submit-survey': (evt, tmpl) ->
    evt.preventDefault()
    $form = $('.ui.form')
    minutes = $form.form('get value', 'mincat')
    text = $form.form('get value', 'textcat')
    data = $form.form('get value', 'datacat')
    period = $form.form('get value', 'minperiod')
    canld = $form.form('get value', 'canld')
    usld = $form.form('get value', 'usld')
    intlld = $form.form('get value', 'intlld')
    vmail = $form.form('get value', 'vmail')
    intltext = $form.form('get value', 'intltext')
    picmessage = $form.form('get value', 'picmessage')
    vidmessage = $form.form('get value', 'vidmessage')
    inccalls = $form.form('get value', 'inccalls')
    zrest = $form.form('get value', 'zrest')
    sessid = Meteor.default_connection._lastSessionId
    if (minutes == "" or text == "" or data == "")
      if minutes == "" and text == "" and data == ""
        sAlert.error(TAPi18n.__ 'fields_with_asterix_mandatory')
        $('#minutes-query').addClass('error')
        $('#text-query').addClass('error')
        $('#data-query').addClass('error')
      else if minutes == "" and text == ""
        sAlert.error(TAPi18n.__ 'fields_with_asterix_mandatory')
        $('#minutes-query').addClass('error')
        $('#text-query').addClass('error')
      else if text == "" and data == ""
        sAlert.error(TAPi18n.__ 'fields_with_asterix_mandatory')
        $('#text-query').addClass('error')
        $('#data-query').addClass('error')
      else if minutes == "" and data == ""
        sAlert.error(TAPi18n.__ 'fields_with_asterix_mandatory')
        $('#minutes-query').addClass('error')
        $('#data-query').addClass('error')
      else if text == ""
        sAlert.error(TAPi18n.__ 'text_not_set')
        $('#text-query').addClass('error')
      else if data == ""
        sAlert.error(TAPi18n.__ 'data_not_set')
        $('#data-query').addClass('error')
      else
        sAlert.error(TAPi18n.__ 'minutes_not_set')
        $('minutes-query').addClass('error')
    else
      if PlanFilters.find().count() > 0
        PlanFilters.remove({})
        PlanFilters.insert {minCat: minutes, textCat: text, dataCat: data, minPeriod: period, canLd: canld, usLd: usld, intlLd: intlld, voiceMail: vmail, intlText: intltext, picMessage: picmessage, vidMessage: vidmessage, incCalls: inccalls, zoneRest: zrest, session: sessid}
        Router.go 'planSuggestions'
      else
        PlanFilters.insert {minCat: minutes, textCat: text, dataCat: data, minPeriod: period, canLd: canld, usLd: usld, intlLd: intlld, voiceMail: vmail, intlText: intltext, picMessage: picmessage, vidMessage: vidmessage, incCalls: inccalls, zoneRest: zrest, session: sessid}
        Router.go 'planSuggestions'

  "focus #minutes-query": (evt, tmpl) ->
    $('#minutes-query').removeClass('error')

  "focus #text-query": (evt, tmpl) ->
    $('#text-query').removeClass('error')

  "focus #data-query": (evt, tmpl) ->
    $('#data-query').removeClass('error')
