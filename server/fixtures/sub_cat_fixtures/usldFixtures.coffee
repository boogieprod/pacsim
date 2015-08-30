Meteor.startup ->
  if UsLd.find().count() is 0
    UsLd.insertTranslations {name: "Emergencies", pacsimId: "EM"}, {fr: {name: "Urgences"}}
    UsLd.insertTranslations {name: "Some", pacsimId: "SO"}, {fr: {name: "Un peu"}}
    UsLd.insertTranslations {name: "Unlimited", pacsimId: "UN"}, {fr: {name: "Illimité"}}
