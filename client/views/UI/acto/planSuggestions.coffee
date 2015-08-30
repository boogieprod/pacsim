Template.planSuggestions.rendered = ->

  $('#progress-bar').progress
    percent: 60

Template.planSuggestions.helpers

  filteredplans: ->
    minutescat = _.map PlanFilters.find().fetch(), (filter) ->
      filter.minCat
    textcat = _.map PlanFilters.find().fetch(), (filter) ->
      filter.textCat
    datacat = _.map PlanFilters.find().fetch(), (filter) ->
      filter.dataCat
    periodicity = _.map PlanFilters.find().fetch(), (filter) ->
      filter.minPeriod
    canld = _.map PlanFilters.find().fetch(), (filter) ->
      filter.canLd
    usld = _.map PlanFilters.find().fetch(), (filter) ->
      filter.usLd
    intlld = _.map PlanFilters.find().fetch(), (filter) ->
      filter.intlLd
    vmail = _.map PlanFilters.find().fetch(), (filter) ->
      filter.voiceMail
    intltext = _.map PlanFilters.find().fetch(), (filter) ->
      filter.intlText
    picmess = _.map PlanFilters.find().fetch(), (filter) ->
      filter.picMessage
    vidmess = _.map PlanFilters.find().fetch(), (filter) ->
      filter.vidMessage
    incomingcalls = _.map PlanFilters.find().fetch(), (filter) ->
      filter.incCalls
    zonerestriction = _.map PlanFilters.find().fetch(), (filter) ->
      filter.zoneRest
    filteredcount = RatePlans.find({minCat: minutescat[0], textCat: textcat[0], dataCat: datacat[0], minPeriod: periodicity[0], canLd: canld[0], usLd: usld[0], intlLd: intlld[0], voiceMail: vmail[0], intlText: intltext[0], picMessage: picmess[0], vidMessage: vidmess[0], incCalls: incomingcalls[0], zoneRest: zonerestriction[0]}).count()
    if filteredcount == 0
      secondfilteredcount = RatePlans.find({minCat: minutescat[0], textCat: textcat[0], dataCat: datacat[0]}).count()
      if secondfilteredcount == 0
        sAlert.error(TAPi18n.__ 'no_match_show_popular')
        RatePlans.find {minCat: "UN", textCat: "UN", dataCat: "SO"}, {limit: 7, sort: {msf: -1}}
      else
        RatePlans.find {minCat: minutescat[0], textCat: textcat[0], dataCat: datacat[0]}
    else
      RatePlans.find {minCat: minutescat[0], textCat: textcat[0], dataCat: datacat[0], minPeriod: periodicity[0], canLd: canld[0], usLd: usld[0], intlLd: intlld[0], voiceMail: vmail[0], intlText: intltext[0], picMessage: picmess[0], vidMessage: vidmess[0], incCalls: incomingcalls[0], zoneRest: zonerestriction[0]}, {limit: 7, sort: {msf: -1}}
