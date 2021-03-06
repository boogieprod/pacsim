@MinutesCategories = new TAPi18n.Collection 'minutescategories'

MinutesCategoriesSchema =

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

MinutesCategories.attachSchema MinutesCategoriesSchema
