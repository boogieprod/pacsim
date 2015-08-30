Meteor.startup ->
	if IntlText.find().count() is 0
    IntlText.insertTranslations {name: "Emergencies", pacsimId: "EM"}, {fr: {name: "Urgences"}}
    IntlText.insertTranslations {name: "Some", pacsimId: "SO"}, {fr: {name: "Un peu"}}
    IntlText.insertTranslations {name: "Unlimited", pacsimId: "UN"}, {fr: {name: "Illimité"}}
