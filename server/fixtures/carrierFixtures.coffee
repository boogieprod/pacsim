Meteor.startup ->
	if Carriers.find().count() is 0
      Carriers.insert {name: "Rogers", pacsimId: "RO", logo: "rogers-logo.png"}
      Carriers.insert {name: "Bell", pacsimId: "BE", logo: "bell-logo.png"}
      Carriers.insert {name: "Telus", pacsimId: "TE", logo: "telus-logo.png"}
      Carriers.insert {name: "Fido", pacsimId: "FI", logo: "fido-logo.png"}
      Carriers.insert {name: "Virgin Mobile", pacsimId: "VI", logo: "virgin-logo.png"}
      Carriers.insert {name: "Koodo Mobile", pacsimId: "KO", logo: "koodo-logo.png"}
      Carriers.insert {name: "Chat-R", pacsimId: "CH", logo: "chatr-logo.png"}
      Carriers.insert {name: "Public Mobile", pacsimId: "PU", logo: "public-logo.png"}
      Carriers.insert {name: "Wind Mobile", pacsimId: "WI", logo: "wind-logo.png"}
      Carriers.insert {name: "Mobilicity", pacsimId: "MO", logo: "mobilicity-logo.png"}
