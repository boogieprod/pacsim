@AreaCodes = new TAPi18n.Collection 'areacodes'

AreaCodesSchema =

  name:
    type: String

  "i18n.fr.name":
    type: String
    optional: true

  code:
    type: String

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

AreaCodes.attachSchema AreaCodesSchema
