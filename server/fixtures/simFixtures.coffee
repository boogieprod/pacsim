Meteor.startup ->
  if SimCards.find().count() is 0

    SimCards.insertTranslations {name: "Rogers regular SIM card", pacsimId: "ROSC0001", carRel: "RO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Rogers format régulier"}}
    SimCards.insertTranslations {name: "Rogers micro SIM card", pacsimId: "ROSC0002", carRel: "RO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Rogers format micro"}}
    SimCards.insertTranslations {name: "Rogers nano SIM card", pacsimId: "ROSC0003", carRel: "RO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Rogers format nano"}}
    SimCards.insertTranslations {name: "Bell regular SIM card", pacsimId: "BESC0001", carRel: "BE",cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Bell format régulier"}}
    SimCards.insertTranslations {name: "Bell micro SIM card", pacsimId: "BESC0002", carRel: "BE", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Bell format micro"}}
    SimCards.insertTranslations {name: "Bell nano SIM card", pacsimId: "BESC0003", carRel: "BE", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Bell format nano"}}
    SimCards.insertTranslations {name: "Telus regular SIM card", pacsimId: "TESC0001", carRel: "TE", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Telus format régulier"}}
    SimCards.insertTranslations {name: "Telus micro SIM card", pacsimId: "TESC0002", carRel: "TE", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Telus format micro"}}
    SimCards.insertTranslations {name: "Telus nano SIM card", pacsimId: "TESC0003", carRel: "TE", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Telus format nano"}}
    SimCards.insertTranslations {name: "Fido regular SIM card", pacsimId: "FISC0001", carRel: "FI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Fido format régulier"}}
    SimCards.insertTranslations {name: "Fido micro SIM card", pacsimId: "FISC0002", carRel: "FI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Fido format micro"}}
    SimCards.insertTranslations {name: "Fido nano SIM card", pacsimId: "FISC0003", carRel: "FI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Fido format nano"}}
    SimCards.insertTranslations {name: "Virgin Mobile regular SIM card", pacsimId: "VISC0001", carRel: "VI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Virgin Mobile format régulier"}}
    SimCards.insertTranslations {name: "Virgin Mobile micro SIM card", pacsimId: "VISC0002", carRel: "VI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Virgin Mobile format micro"}}
    SimCards.insertTranslations {name: "Virgin Mobile nano SIM card", pacsimId: "VISC0003", carRel: "VI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Virgin Mobile format nano"}}
    SimCards.insertTranslations {name: "Koodo Mobile regular SIM card", pacsimId: "KOSC0001", carRel: "KO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Koodo Mobile format régulier"}}
    SimCards.insertTranslations {name: "Koodo Mobile micro SIM card", pacsimId: "KOSC0002", carRel: "KO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Koodo Mobile format micro"}}
    SimCards.insertTranslations {name: "Koodo Mobile nano SIM card", pacsimId: "KOSC0003", carRel: "KO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Koodo Mobile format nano"}}
    SimCards.insertTranslations {name: "Chat-R regular SIM card", pacsimId: "CHSC0001", carRel: "CH", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Chat-R format régulier"}}
    SimCards.insertTranslations {name: "Chat-R micro SIM card", pacsimId: "CHSC0002", carRel: "CH", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Chat-R format micro"}}
    SimCards.insertTranslations {name: "Chat-R nano SIM card", pacsimId: "CHSC0003", carRel: "CH", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Chat-R format nano"}}
    SimCards.insertTranslations {name: "Public Mobile regular SIM card", pacsimId: "PUSC0001", carRel: "PU", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Public Mobile format régulier"}}
    SimCards.insertTranslations {name: "Public Mobile micro SIM card", pacsimId: "PUSC0002", carRel: "PU", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Public Mobile format micro"}}
    SimCards.insertTranslations {name: "Public Mobile nano SIM card", pacsimId: "PUSC0003", carRel: "PU", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Public Mobile format nano"}}
    SimCards.insertTranslations {name: "Wind Mobile regular SIM card", pacsimId: "WISC0001", carRel: "WI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Wind Mobile format régulier"}}
    SimCards.insertTranslations {name: "Wind Mobile micro SIM card", pacsimId: "WISC0002", carRel: "WI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Wind Mobile format micro"}}
    SimCards.insertTranslations {name: "Wind Mobile nano SIM card", pacsimId: "WISC0003", carRel: "WI", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Wind Mobile format nano"}}
    SimCards.insertTranslations {name: "Mobilicity regular SIM card", pacsimId: "MOSC0001", carRel: "MO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Mobilicity format régulier"}}
    SimCards.insertTranslations {name: "Mobilicity micro SIM card", pacsimId: "MOSC0002", carRel: "MO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Mobilicity format micro"}}
    SimCards.insertTranslations {name: "Mobilicity nano SIM card", pacsimId: "MOSC0003", carRel: "MO", cost: "0", price: "20", thumb: "sim-card.jpg"}, {fr: {name: "Carte SIM Mobilicity format nano"}}
