@RatePlans = new TAPi18n.Collection 'rateplans'

RatePlansSchema =

  name:
    type: String

  "i18n.fr.name":
    type: String
    optional: true

  minutes:
    type: String

  "i18n.fr.minutes":
    type: String
    optional: true

  nightsandweekend:
    type: String
    optional: true

  "i18n.fr.nightsandweekend":
    type: String
    optional: true

  textmessages:
    type: String

  "i18n.fr.textmessages":
    type: String
    optional: true

  data:
    type: String

  "i18n.fr.data":
    type: String
    optional: true

  canlongdistance:
    type: String

  "i18n.fr.canlongdistance":
    type: String
    optional: true

  uslongdistance:
    type: String

  "i18n.fr.uslongdistance":
    type: String
    optional: true

  intllongdistance:
    type: String

  "i18n.fr.intllongdistance":
    type: String
    optional: true

  intltextmess:
    type: String

  "i18n.fr.intltextmess":
    type: String
    optional: true

  picmessage:
    type: String

  "i18n.fr.picmessage":
    type: String
    optional: true

  vidmessage:
    type: String

  "i18n.fr.vidmessage":
    type: String
    optional: true

  vmail:
    type: String

  "i18n.fr.vmail":
    type: String
    optional: true

  intlpicmess:
    type: String

  "i18n.fr.intlpicmess":
    type: String
    optional: true

  intlvidmess:
    type: String

  "i18n.fr.intlvidmess":
    type: String
    optional: true

  mintopup:
    type: String

  pacsimId:
    type: String
    unique: true

  msf:
    type: String

  "i18n.fr.msf":
    type: String
    optional: true

  commission:
    type: String

  carRel:
    type: Schemas.CarriersSchema
    autoform:
      options:->
        _.map Carriers.find().fetch(), (carrier)->
          label: carrier.name
          value: carrier.pacsimId

  planCat:
    type: Schemas.PlanCategoriesSchema
    autoform:
      options:->
        _.map PlanCategories.find().fetch(), (plancategory)->
          label: plancategory.name
          value: plancategory.pacsimId

  canldRel:
    type: Schemas.CanadianLdSchema
    autoform:
      options: ->
        _.map CanadianLd.find().fetch(), (canld)->
          label: canld.name
          value: canld.pacsimId

  dataCat:
    type: Schemas.DataCategoriesSchema
    autoform:
      options: ->
        _.map DataCategories.find().fetch(), (datacat)->
          label: datacat.name
          value: datacat.pacsimId

  inccallsRel:
    type: Schemas.IncomingCallsSchema
    autoform:
      options: ->
        _.map IncomingCalls.find().fetch(), (inccalls)->
          label: inccalls.name
          value: inccalls.pacsimId

  intlldRel:
    type: Schemas.IntlLdSchema
    autoform:
      options: ->
        _.map IntlLd.find().fetch(), (intlld)->
          label: intlld.name
          value: intlld.pacsimId

  intltextRel:
    type: Schemas.IntlTextSchema
    autoform:
      options: ->
        _.map IntlText.find().fetch(), (intltext)->
          label: intltext.name
          value: intltext.pacsimId

  minCat:
    type: [Schemas.MinutesCategoriesSchema]
    autoform:
      options: ->
        _.map MinutesCategories.find().fetch(), (mincat)->
          label: mincat.name
          value: mincat.pacsimId

  minperiodRel:
    type: Schemas.MinutesPeriodicitySchema
    autoform:
      options: ->
        _.map MinutesPeriodicity.find().fetch(), (minper)->
          label: minper.name
          value: minper.pacsimId

  picmessRel:
    type: Schemas.PhotoMessagesSchema
    autoform:
      options: ->
        _.map PhotoMessages.find().fetch(), (picmess)->
          label: picmss.name
          value: picmess.pacsimId

  textCat:
    type: Schemas.TextCategoriesSchema
    autoform:
      options: ->
        _.map TextCategories.find().fetch(), (textcat)->
          label: textcat.name
          value: textcat.pacsimId

  usldRel:
    type: Schemas.UsLdSchema
    autoform:
      options: ->
        _.map UsLd.find().fetch(), (usl)->
          label: usl.name
          value: usl.pacsimId

  vidmessRel:
    type: Schemas.VideoMessagesSchema
    autoform:
      options: ->
        _.map VideoMessages.find().fetch(), (vidmess)->
          label: vidmess.name
          value: vidmess.pacsimId

  vmRel:
    type: Schemas.VoiceMailSchema
    autoform:
      options: ->
        _.map VoiceMail.find().fetch(), (vm)->
          label: vm.name
          value: vm.pacsimId

  zonerestRel:
    type: Schemas.ZoneRestrictionSchema
    autoform:
      options: ->
        _.map ZoneRestriction.find().fetch(), (zrest)->
          label: zrest.name
          value: zrest.pacsimId

  createdAt:
    type: Date
    autoValue: ->
      if this.isInsert
        new Date

  updatedAt:
    type: Date
    optional: true
    autoValue: ->
      if this.isUpdate
        new Date

RatePlans.attachSchema RatePlansSchema
