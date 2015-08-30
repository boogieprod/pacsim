Meteor.publish 'carriers', ->
  Carriers.find()

TAPi18n.publish 'simcards', ->
  SimCards.i18nFind({}, {fields: {'cost': 0, 'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'ppdcards', ->
  PpdCards.i18nFind({}, {fields: {'cost': 0, 'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'rateplans', ->
  RatePlans.i18nFind({}, {fields: {'commission': 0, 'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'areacodes', ->
  AreaCodes.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'plancategories', ->
  PlanCategories.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'minutescategories', ->
  MinutesCategories.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'textcategories', ->
  TextCategories.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'datacategories', ->
  DataCategories.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'minutesperiodicity', ->
  MinutesPeriodicity.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'canadianld', ->
  CanadianLd.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'usld', ->
  UsLd.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'intlld', ->
  IntlLd.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'voicemail', ->
  VoiceMail.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'intltext', ->
  IntlText.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'photomessages', ->
  PhotoMessages.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'videomessages', ->
  VideoMessages.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'incomingcalls', ->
  IncomingCalls.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})

TAPi18n.publish 'zonerestriction', ->
  ZoneRestriction.i18nFind({}, {fields: {'createdAt': 0, 'updatedAt': 0}})
