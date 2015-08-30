@Carriers = new Meteor.Collection 'carriers'

CarriersSchema =

  name:
    type: String

  pacsimId:
    type: String
    unique: true

  logo:
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

Carriers.attachSchema CarriersSchema
