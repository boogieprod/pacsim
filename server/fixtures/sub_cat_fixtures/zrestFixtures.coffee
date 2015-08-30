Meteor.startup ->
	if ZoneRestriction.find().count() is 0
    ZoneRestriction.insertTranslations {name: "Restricted zone", pacsimId: "ZR"}, {fr: {name: "Zone restreinte"}}
    ZoneRestriction.insertTranslations {name: "No zone restriction", pacsimId: "NR"}, {fr: {name: "Aucune restriction de zone"}}
