Meteor.startup ->
	if MinutesPeriodicity.find().count() is 0
    MinutesPeriodicity.insertTranslations {name: "Unlimited (anytime)", pacsimId: "DA"}, {fr: {name: "Illimité (en tout temps)"}}
    MinutesPeriodicity.insertTranslations {name: "Unlimited (night)", pacsimId: "NI"}, {fr: {name: "Illimité (soir)"}}
    MinutesPeriodicity.insertTranslations {name: "Unlimited (weekend)", pacsimId: "WE"}, {fr: {name: "Illimité (fin de semaine)"}}
    MinutesPeriodicity.insertTranslations {name: "Unlimited (night&we)", pacsimId: "NW"}, {fr: {name: "Illimité (soir et fin de semaine)"}}
    MinutesPeriodicity.insertTranslations {name: "No unlimited periods", pacsimId: "NO"}, {fr: {name: "Pas de périodes illimitées"}}
