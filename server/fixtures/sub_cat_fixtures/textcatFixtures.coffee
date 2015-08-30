Meteor.startup ->
  if TextCategories.find().count() is 0
    TextCategories.insertTranslations {name: "Emergencies", pacsimId: "EM"}, {fr: {name: "Urgences"}}
    TextCategories.insertTranslations {name: "Some", pacsimId: "SO"}, {fr: {name: "Un peu"}}
    TextCategories.insertTranslations {name: "Unlimited", pacsimId: "UN"}, {fr: {name: "Illimité"}}
