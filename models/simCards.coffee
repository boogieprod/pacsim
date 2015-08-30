@SimCards = new TAPi18n.Collection 'simcards'

SimCardsSchema =

  name:
    type: String

  "i18n.fr.name":
    type: String

  pacsimId:
    type: String
    unique: true

  carRel:
    type: Schemas.CarriersSchema
    autoform:
      options:->
        _.map Carriers.find().fetch(), (carrier)->
          label: carrier.name
          value: carrier.pacsimId

  cost:
    type: String

  price:
    type: String

  thumb:
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

SimCards.attachSchema SimCardsSchema
