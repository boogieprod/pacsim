Meteor.startup ->
	if VoiceMail.find().count() is 0
    VoiceMail.insertTranslations {name: "Included", pacsimId: "IN"}, {fr: {name: "Incluse"}}
    VoiceMail.insertTranslations {name: "Not included", pacsimId: "NI"}, {fr: {name: "Pas incluse"}}
