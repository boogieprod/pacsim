Meteor.startup ->
	if IncomingCalls.find().count() is 0
    IncomingCalls.insertTranslations {name: "Unlimited incoming calls", pacsimId: "IN"}, {fr: {name: "Appels entrants illimités"}}
    IncomingCalls.insertTranslations {name: "Incoming calls at same rate than outgoing calls", pacsimId: "NO"}, {fr: {name: "Appels entrants au même tarif que les appels sortants"}}
