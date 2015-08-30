Meteor.startup ->
  if AreaCodes.find().count() is 0

    AreaCodes.insertTranslations {name: "Montreal", code: "514/438"}, {fr: {name: "Montréal"}}
    AreaCodes.insertTranslations {name: "Toronto", code: "416/437/647"}
    AreaCodes.insertTranslations {name: "Quebec city", code: "418/581"}, {fr: {name: "Québec"}}
    AreaCodes.insertTranslations {name: "Ottawa", code: "343/613"}
    AreaCodes.insertTranslations {name: "Vancouver", code: "236/604/778"}
