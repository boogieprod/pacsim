Meteor.startup ->
  if PlanCategories.find().count() is 0
    PlanCategories.insertTranslations {name: "Voice", pacsimId: "VO"}, {fr: {name: "Voix"}}
    PlanCategories.insertTranslations {name: "Voice and text", pacsimId: "VT"}, {fr: {name: "Voix et textes"}}
    PlanCategories.insertTranslations {name: "Voice and data", pacsimId: "VD"}, {fr: {name: "Voix et données"}}
    PlanCategories.insertTranslations {name: "Data", pacsimId: "DO"}, {fr: {name: "Données"}}
