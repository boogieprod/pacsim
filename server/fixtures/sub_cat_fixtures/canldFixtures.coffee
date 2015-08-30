Meteor.startup ->
  if CanadianLd.find().count() is 0
    CanadianLd.insertTranslations {name: "Emergencies", pacsimId: "EM"}, {fr: {name: "Urgences"}}
    CanadianLd.insertTranslations {name: "Some", pacsimId: "SO"}, {fr: {name: "Un peu"}}
    CanadianLd.insertTranslations {name: "Unlimited", pacsimId: "UN"}, {fr: {name: "Illimité"}}
