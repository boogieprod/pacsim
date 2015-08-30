@MinutesPeriodicity = new TAPi18n.Collection 'minutesperiodicity'

MinutesPeriodicitySchema =

  name:
    type: String

  "i18n.fr.name":
    type: String

  pacsimId:
    type: String
    unique: true

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

MinutesPeriodicity.attachSchema MinutesPeriodicitySchema
