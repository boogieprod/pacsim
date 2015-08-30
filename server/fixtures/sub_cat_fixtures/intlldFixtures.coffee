Meteor.startup ->
	if IntlLd.find().count() is 0
    IntlLd.insertTranslations {name: "Emergencies", pacsimId: "EM"}, {fr: {name: "Urgences"}}
    IntlLd.insertTranslations {name: "Some", pacsimId: "SO"}, {fr: {name: "Un peu"}}
    IntlLd.insertTranslations {name: "Unlimited", pacsimId: "UN"}, {fr: {name: "Illimité"}}
