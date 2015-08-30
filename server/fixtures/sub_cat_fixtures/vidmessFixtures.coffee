Meteor.startup ->
	if VideoMessages.find().count() is 0
    VideoMessages.insertTranslations {name: "No video messages", pacsimId: "NO"}, {fr: {name: "Aucun message vidéo"}}
    VideoMessages.insertTranslations {name: "Some local video messages", pacsimId: "SO"}, {fr: {name: "Un peu de messages vidéos (Can)"}}
    VideoMessages.insertTranslations {name: "Unlimited local video messages", pacsimId: "CU"}, {fr: {name: "Messages vidéos illimités (Can)"}}
    VideoMessages.insertTranslations {name: "Unlimited US video messages", pacsimId: "UU"}, {fr: {name: "Messages vidéos illimités (US)"}}
    VideoMessages.insertTranslations {name: "Unlimited international video messages", pacsimId: "IU"}, {fr: {name: "Messages vidéos illimités (Internationnal)"}}
