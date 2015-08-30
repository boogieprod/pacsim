Meteor.startup ->
  if PpdCards.find().count() is 0
    
    PpdCards.insertTranslations {name: "Rogers 10$ prepaid card", pacsimId: "ROPV0001", carRel: "RO", cost: "0", price: "10", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Rogers 10$"}}
    PpdCards.insertTranslations {name: "Rogers 20$ prepaid card", pacsimId: "ROPV0002", carRel: "RO", cost: "0", price: "20", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Rogers 20$"}}
    PpdCards.insertTranslations {name: "Rogers 30$ prepaid card", pacsimId: "ROPV0003", carRel: "RO", cost: "0", price: "30", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Rogers 30$"}}
    PpdCards.insertTranslations {name: "Rogers 40$ prepaid card", pacsimId: "ROPV0004", carRel: "RO", cost: "0", price: "40", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Rogers 40$"}}
    PpdCards.insertTranslations {name: "Rogers 100$ prepaid card", pacsimId: "ROPV0005", carRel: "RO", cost: "0", price: "100", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Rogers 100$"}}
    PpdCards.insertTranslations {name: "Bell 15$ prepaid card", pacsimId: "BEPV0001", carRel: "BE", cost: "0", price: "15", expiration: 30, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Bell 15$"}}
    PpdCards.insertTranslations {name: "Bell 25$ prepaid card", pacsimId: "BEPV0002", carRel: "BE", cost: "0", price: "25", expiration: 60, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Bell 25$"}}
    PpdCards.insertTranslations {name: "Bell 50$ prepaid card", pacsimId: "BEPV0003", carRel: "BE", cost: "0", price: "50", expiration: 60, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Bell 50$"}}
    PpdCards.insertTranslations {name: "Bell 100$ prepaid card", pacsimId: "BEPV0004", carRel: "BE", cost: "0", price: "100", expiration: 365, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Bell 100$"}}
    PpdCards.insertTranslations {name: "Telus 15$ prepaid card", pacsimId: "TEPV0001", carRel: "TE", cost: "0", price: "15", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Telus 15$"}}
    PpdCards.insertTranslations {name: "Telus 25$ prepaid card", pacsimId: "TEPV0002", carRel: "TE", cost: "0", price: "25", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Telus 25$"}}
    PpdCards.insertTranslations {name: "Telus 50$ prepaid card", pacsimId: "TEPV0003", carRel: "TE", cost: "0", price: "50", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Telus 50$"}}
    PpdCards.insertTranslations {name: "Telus 100$ prepaid card", pacsimId: "TEPV0004", carRel: "TE", cost: "0", price: "100", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Telus 100$"}}
    PpdCards.insertTranslations {name: "Fido 10$ prepaid card", pacsimId: "FIPV0001", carRel: "FI", cost: "0", price: "10", expiration: 30, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Fido 10$"}}
    PpdCards.insertTranslations {name: "Fido 20$ prepaid card", pacsimId: "FIPV0002", carRel: "FI", cost: "0", price: "20", expiration: 30, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Fido 20$"}}
    PpdCards.insertTranslations {name: "Fido 30$ prepaid card", pacsimId: "FIPV0003", carRel: "FI", cost: "0", price: "30", expiration: 30, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Fido 30$"}}
    PpdCards.insertTranslations {name: "Fido 50$ prepaid card", pacsimId: "FIPV0004", carRel: "FI", cost: "0", price: "50", expiration: 60, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Fido 50$"}}
    PpdCards.insertTranslations {name: "Fido 100$ prepaid card", pacsimId: "FIPV0005", carRel: "FI", cost: "0", price: "100", expiration: 365, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Fido 100$"}}
    PpdCards.insertTranslations {name: "Virgin Mobile 15$ prepaid card", pacsimId: "VIPV0001", carRel: "VI", cost: "0", price: "15", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Virgin Mobile 15$"}}
    PpdCards.insertTranslations {name: "Virgin Mobile 25$ prepaid card", pacsimId: "VIPV0002", carRel: "VI", cost: "0", price: "25", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Virgin Mobile 25$"}}
    PpdCards.insertTranslations {name: "Virgin Mobile 50$ prepaid card", pacsimId: "VIPV0003", carRel: "VI", cost: "0", price: "50", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Virgin Mobile 50$"}}
    PpdCards.insertTranslations {name: "Virgin Mobile 100$ prepaid card", pacsimId: "VIPV0004", carRel: "VI", cost: "0", price: "100", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Virgin Mobile 100$"}}
    PpdCards.insertTranslations {name: "Koodo Mobile 15$ prepaid card", pacsimId: "KOPV0001", carRel: "KO", cost: "0", price: "15", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Koodo Mobile 15$"}}
    PpdCards.insertTranslations {name: "Koodo Mobile 25$ prepaid card", pacsimId: "KOPV0002", carRel: "KO", cost: "0", price: "25", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Koodo Mobile 25$"}}
    PpdCards.insertTranslations {name: "Koodo Mobile 50$ prepaid card", pacsimId: "KOPV0003", carRel: "KO", cost: "0", price: "50", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Koodo Mobile 50$"}}
    PpdCards.insertTranslations {name: "Chat-R 10$ prepaid card", pacsimId: "CHPV0001", carRel: "CH", cost: "0", price: "10", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Chat-R 10$"}}
    PpdCards.insertTranslations {name: "Chat-R 25$ prepaid card", pacsimId: "CHPV0002", carRel: "CH", cost: "0", price: "25", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Chat-R 25$"}}
    PpdCards.insertTranslations {name: "Chat-R 40$ prepaid card", pacsimId: "CHPV0003", carRel: "CH", cost: "0", price: "40", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Chat-R 40$"}}
    PpdCards.insertTranslations {name: "Chat-R 50$ prepaid card", pacsimId: "CHPV0004", carRel: "CH", cost: "0", price: "50", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Chat-R 50$"}}
    PpdCards.insertTranslations {name: "Public Mobile 15$ prepaid card", pacsimId: "PUPV0001", carRel: "PU", cost: "0", price: "15", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Public Mobile 15$"}}
    PpdCards.insertTranslations {name: "Wind Mobile 15$ prepaid card", pacsimId: "WIPV0001", carRel: "WI", cost: "0", price: "15", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Wind Mobile 15$"}}
    PpdCards.insertTranslations {name: "Mobilicity 15$ prepaid card", pacsimId: "MOPV0001", carRel: "MO", cost: "0", price: "15", expiration: 0, thumb: "prepaid-card.jpg"}, {fr: {name: "Carte prépayée Mobilicity 15$"}}
