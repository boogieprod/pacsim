Meteor.startup ->
	if PhotoMessages.find().count() is 0
    PhotoMessages.insertTranslations {name: "No photo messages", pacsimId: "NO"}, {fr: {name: "Aucun message photo"}}
    PhotoMessages.insertTranslations {name: "Some local photo messages", pacsimId: "SO"}, {fr: {name: "Un peu de messages photos (Can)"}}
    PhotoMessages.insertTranslations {name: "Unlimited local photo messages", pacsimId: "CU"}, {fr: {name: "Messages photos illimités (Can)"}}
    PhotoMessages.insertTranslations {name: "Unlimited US photo messages", pacsimId: "UU"}, {fr: {name: "Messages photos illimités (US)"}}
    PhotoMessages.insertTranslations {name: "Unlimited international photo messages", pacsimId: "IU"}, {fr: {name: "Messages photos illimités (Internationnal)"}}
