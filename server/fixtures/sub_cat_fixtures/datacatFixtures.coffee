Meteor.startup ->
  if DataCategories.find().count() is 0
    DataCategories.insertTranslations {name: "Emergencies", pacsimId: "EM"}, {fr: {name: "Urgences"}}
    DataCategories.insertTranslations {name: "Some", pacsimId: "SO"}, {fr: {name: "Un peu"}}
    DataCategories.insertTranslations {name: "Heavy", pacsimId: "HE"}, {fr: {name: "Beaucoup"}}
