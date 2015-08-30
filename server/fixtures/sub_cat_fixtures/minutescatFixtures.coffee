Meteor.startup ->
  if MinutesCategories.find().count() is 0
    MinutesCategories.insertTranslations {name: "Emergencies", pacsimId: "EM"}, {fr: {name: "Urgences"}}
    MinutesCategories.insertTranslations {name: "Some", pacsimId: "SO"}, {fr: {name: "Un peu"}}
    MinutesCategories.insertTranslations {name: "Unlimited", pacsimId: "UN"}, {fr: {name: "Illimité"}}
