@subs = new SubsManager()
# Home Route
Router.route '/',
  name: "home"
  layoutTemplate: "basicLayout"
  action: ->
    @render 'home'
    SEO.set title: 'Home - ' + Meteor.App.NAME
    return

Router.route '/homeUI',
  name: "homeUI"
  action: ->
    @render 'homeUI'

Router.route '/about',
  name: "aboutPacsim"
  action: ->
    @render 'aboutPacsim'

Router.route '/barcode-scanner',
  name: "barcodeScanner"
  action: ->
    @render 'barcodeScanner'

Router.route '/product-selection',
  name: "productSelection"
  action: ->
    @render 'productSelection'

Router.route '/act-a-sim/prompt',
  name: "actoPrompt"
  action: ->
    @render 'actoPrompt'

Router.route '/act-a-sim/manual/carriers',
  name: "manualActoCarriers"
  action: ->
    @render 'manualActoCarriers'
  waitOn: ->
    Meteor.subscribe 'carriers'
  data: ->
    carriers: Carriers.find()

Router.route 'act-a-sim/auto/survey',
  name: "autoSurvey"
  action: ->
    @render 'autoSurvey'
  waitOn: -> [
    TAPi18n.subscribe 'minutescategories'
    TAPi18n.subscribe 'textcategories'
    TAPi18n.subscribe 'datacategories'
    TAPi18n.subscribe 'minutesperiodicity'
    TAPi18n.subscribe 'canadianld'
    TAPi18n.subscribe 'usld'
    TAPi18n.subscribe 'intlld'
    TAPi18n.subscribe 'voicemail'
    TAPi18n.subscribe 'intltext'
    TAPi18n.subscribe 'photomessages'
    TAPi18n.subscribe 'videomessages'
    TAPi18n.subscribe 'incomingcalls'
    TAPi18n.subscribe 'zonerestriction'
  ]

Router.route '/act-a-sim/auto/suggestions',
  name: "planSuggestions"
  action: ->
    @render 'planSuggestions'
  waitOn: ->
    TAPi18n.subscribe 'rateplans'

Router.route '/act-a-sim/manual/:pacsimId',
  name: "manualPlanSelection"
  action: ->
    @render 'manualPlanSelection'
  waitOn: -> [
    Meteor.subscribe 'carriers'
    TAPi18n.subscribe 'rateplans'
  ]
  data: ->
    carrierName: _.map Carriers.find({pacsimId: this.params.pacsimId}).fetch(), (carrier)->
      return carrier.name
    vdPlans: RatePlans.find {carRel: this.params.pacsimId, planCat: "VD"}
    vtPlans: RatePlans.find {carRel: this.params.pacsimId, planCat: "VT"}
    voPlans: RatePlans.find {carRel: this.params.pacsimId, planCat: "VO"}
    doPlans: RatePlans.find {carRel: this.params.pacsimId, planCat: "DO"}

Router.route '/act-a-sim/plan-details/:pacsimId',
  name: "planDetails"
  action: ->
    @render 'planDetails'
  waitOn: -> [
    TAPi18n.subscribe 'rateplans'
    TAPi18n.subscribe 'simcards'
  ]
  data: ->
    rateplans: RatePlans.find({pacsimId: this.params.pacsimId})

Router.route '/buy-a-sim/carriers',
  name: "simCarriers"
  action: ->
    @render 'simCarriers'
  waitOn: ->
    Meteor.subscribe 'carriers'
  data: ->
    carriers: Carriers.find()

Router.route '/buy-a-ppd-card/carriers',
  name: "ppdCarriers"
  action: ->
    @render 'ppdCarriers'
  waitOn: ->
    Meteor.subscribe 'carriers'
  data: ->
    carriers: Carriers.find()

Router.route '/buy-a-sim/:pacsimId',
  name: "simCards"
  waitOn: ->
    TAPi18n.subscribe 'simcards'
  action: ->
    @render 'simCards'
  data: ->
    sim_cards: SimCards.find {carRel: this.params.pacsimId}

Router.route '/buy-a-ppd-card/:pacsimId',
  name: "ppdCards"
  waitOn: ->
    TAPi18n.subscribe 'ppdcards'
  action: ->
    @render 'ppdCards'
  data: ->
    ppd_cards: PpdCards.find {carRel: this.params.pacsimId}

Router.route '/cart',
  name: "shoppingCart"
  action: ->
    @render 'shoppingCart'

Router.route '/form',
  name: "customerForm"
  waitOn: ->
    TAPi18n.subscribe 'areacodes'
  action: ->
    @render 'customerForm'
  data: ->
    areacodes: AreaCodes.find()
