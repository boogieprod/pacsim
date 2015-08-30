@PpdCards = new TAPi18n.Collection 'ppdcards'

PpdCardsSchema =

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
      options: ->
        _.map Carriers.find().fetch(), (carrier)->
          label: carrier.name
          value: carrier.pacsimId

  cost:
    type: String

  price:
    type: String

  expiration:
    type: Number

  thumb:
    type: String
    optional: true

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

PpdCards.attachSchema PpdCardsSchema
