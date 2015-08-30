dep = "Depending"
depfr = "Dépendemment"
any = "Anytime"
anyfr = "En tout temps"
provwideult = "Province-Wide Calling"
provwideultfr = "Appels à l'échelle de la province"
ultnaw6to7 = "Every evening from 18h to 7h and from Friday 18h to Monday 7h"
ultnaw6to7fr = "Tous les soirs de 18h à 7h en plus du vendredi 18h au lundi 7h"
ultnaw6to8 = "Every evening from 18h to 8h and from Friday 18h to Monday 8h"
ultnaw6to8fr = "Tous les soirs de 18h à 8h en plus du vendredi 18h au lundi 8h"
ultnaw7to7 = "Every evening from 19h to 7h and from Friday 19h to Monday 7h"
ultnaw7to7fr = "Tous les soirs de 19h à 7h en plus du vendredi 19h au lundi 7h"
ultnaw5to7 = "Every evening from 17h to 7h and from Friday 17h to Monday 7h"
ultnaw5to7fr = "Tous les soirs de 17h à 7h en plus du vendredi 17h au lundi 7h"
ultnaw7to8 = "Every evening from 19h to 8h and from Friday 19h to Monday 8h"
ultnaw7to8fr = "Tous les soirs de 19h à 8h en plus du vendredi 19h au lundi 8h"
ultnaw5to8 = "Every evening from 17h to 8h and from Friday 17h to Monday 8h"
ultnaw5to8fr = "Tous les soirs de 17h à 8h en plus du vendredi 17h au lundi 8h"
fre = "Unlimited"
frefr = "Illimité"
one$10MB24h = "1$/10MB for 24 hours"
one$10MB24hfr = "1$/10Mo pour une période de 24 heures"
two$MB = "2$ each MB"
two$MBfr = "2$ chaque Mo"
twocentMBover = "(0.02$/MB overage)"
twocentMBoverfr = "(0.02$/Mo supplémentaire)"
fivecentMBover = "(0.05$/MB overage)"
fivecentMBoverfr = "(0.05$/Mo supplémentaire)"
fifteencentminover = "(0.15$/minute overage)"
fifteencentminoverfr = "(0.15$/minute supplémentaire)"
fifteencentMB = "0.15$ each MB"
fifteencentMBfr = "0.15$ chaque Mo"
fifteencentMBover = "(0.15$/MB overage)"
fifteencentMBoverfr = "(0.15$/Mo supplémentaire)"
twentycentmin = "0.20$ each minute"
twentycentminfr = "0.20$ chaque minute"
twentycentminover = "(0.20$/minute overage)"
twentycentminoverfr = "(0.20$/minute supplémentaire)"
twentyfivecentmin = "0.25$ each minute"
twentyfivecentminfr = "0.25$ chaque minute"
twentyfiveoutinfree = "0.25$ each outgoing message (incoming free)"
twentyfiveoutinfreefr = "0.25$ chaque message sortant (entrant gratuit)"
twentyfivecentmessover = "(0.25$/message overage)"
twentyfivecentmessoverfr = "(0.25$/message supplémentaire)"
thirtycentmin = "0.30$ each minute"
thirtycentminfr = "0.30$ chaque minute"
thirtycentminover = "(0.30$/minute overage)"
thirtycentminoverfr = "(0.30$/minute supplémentaire)"
thirtycentmessinout = "0.30$ each message (incoming/outgoing)"
thirtycentmessinoutfr = "0.30$ chaque message (entrant/sortant)"
thirtycentmessinfree = "0.30$ each outgoing message (incoming free)"
thirtycentmessinfreefr = "0.30$ chaque message sortant (entrant gratuit)"
thirtyfivecentmin = "0.35$ each minute"
thirtyfivecentminfr = "0.35$ chaque minute"
thirtyfiveoutthirtyin = "0.35$ each outgoing message (0.30$/incoming message)"
thirtyfiveoutthirtyinfr = "0.35$ chaque message sortant (0.30$/message entrant)"
thirtyfiveoutfreein = "0.35$ each outgoing message (free incoming)"
thirtyfiveoutfreeinfr = "0.35$ chaque message sortant (entrant gratuit)"
fortycentminute = "0.40$ each minute"
fortycentminutefr = "0.40$ chaque minute"
fortycentontopminute = "0.40$ each minute (on top of local minute rate)"
fortycentontopminutefr = "0.40$ chaque minute (en plus du tarif d'appel local)"
fortyoutthirtyin = "0.40$ each outgoing message (0.30$/incoming message)"
fortyoutthirtyinfr = "0.40$ chaque message sortant (0.30$/message entrant)"
fortyoutfreein = "0.40$ each outgoing message (free incoming)"
fortyoutfreeinfr = "0.40$ chaque message sortant (entrant gratuit)"
fortyfivecentminover = "(0.45$/minute overage)"
fortyfivecentminoverfr = "(0.45$/minute supplémentaire)"
fiftycentontopminute = "0.50$ each minute (on top of local minute rate)"
fiftycentontopminutefr = "0.50$ chaque minute (en plus du tarif d'appel local)"
fiftycentoutfreein = "0.50$ each outgoing message (incoming free)"
fiftycentoutfreeinfr = "0.50$ chaque message sortant (entrant gratuit)"
fiftycentinoutmess = "0.50$ each message (incoming/outgoing)"
fiftycentinoutmessfr = "0.50$ chaque message (entrant/sortant)"
fiftycentminute = "0.50$ each minute"
fiftycentminutefr = "0.50$ chaque minute"
seventyfiveoutmessfiftyin = "0.75$ each outgoing message (0.50$/incoming message)"
seventyfiveoutmessfreein = "0.75$ each outgoing message (free incoming)"
seventyfiveoutmessfiftyinfr = "0.75$ chaque message sortant (0.50$/message entrant)"
seventyfiveoutmessfreeinfr = "0.75$ chaque message sortant (entrant gratuit)"
fivehundoutfreein = "500 outgoing (free incoming, 0.30$/message overage)"
fivehundoutfreeinfr = "500 messages sortants (entrants gratuit, 0.30$/message supplémentaire)"
same = "Same as local minute rate"
samefr = "Même que tarif d'appel local"
Meteor.startup ->
# String insertions
  if RatePlans.find().count() is 0
    RatePlans.insertTranslations {name: "Rogers Talk anytime", pacsimId: "ROMP0001", carRel: "RO", msf: "0.75$ + 911", commission: "0", planCat: "VO", minCat: ["EM"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: fiftycentminute, textmessages: thirtycentmessinout, data: fifteencentMB, nightsandweekend: "-", canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutthirtyin, picmessage: fiftycentinoutmess, vidmessage: fiftycentinoutmess, vmail: same, intlpicmess: seventyfiveoutmessfiftyin, intlvidmess: seventyfiveoutmessfiftyin, mintopup: "10"}, {fr: {name: "Rogers Appels en tout temps",
    minutes: fiftycentminutefr, textmessages: thirtycentmessinoutfr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutthirtyinfr, picmessage: fiftycentinoutmessfr,
    vidmessage: fiftycentinoutmessfr, vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: seventyfiveoutmessfiftyinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk all day", pacsimId: "ROMP0002", carRel: "RO", msf: "0.75$ + 911", commission: "0", planCat: "VO", minCat: ["EM", "SO"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: "0.35$/minute first 5 minutes of the day, 0.15$/minute after", textmessages: thirtycentmessinout, data: fifteencentMB, nightsandweekend: "-", canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutthirtyin, picmessage: fiftycentinoutmess, vidmessage: fiftycentinoutmess, vmail: same, intlpicmess: seventyfiveoutmessfiftyin, intlvidmess: seventyfiveoutmessfiftyin, mintopup: "20"}, {fr: {name: "Rogers Appels toute la journée",
    minutes: "0.35$/minute pour les 5 premières minutes de la journée, 0.15$/minute après", textmessages: thirtycentmessinoutfr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutthirtyinfr, picmessage: fiftycentinoutmessfr,
    vidmessage: fiftycentinoutmessfr, vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: seventyfiveoutmessfiftyinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk and Text 15", pacsimId: "ROMP0003", carRel: "RO", msf: "15.75$ + 911", commission: "0", planCat: "VT", minCat: ["EM"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentyfivecentmin, nightsandweekend: "-", textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutfreein, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "20"}, {fr: {name: "Rogers Appels et Textos 15",
    minutes: twentyfivecentminfr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutfreeinfr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk and Text 20", pacsimId: "ROMP0004", carRel: "RO", msf: "20.75$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "WE", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentyfivecentmin, nightsandweekend: "From Friday 18h to Monday 7h", textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "30"}, {fr: {name: "Rogers Appels et Textos 20",
    minutes: twentyfivecentminfr, nightsandweekend: "Du vendredi 18h au lundi 7h", textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk and Text 30", pacsimId: "ROMP0005", carRel: "RO", msf: "30.75$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentyfivecentmin, nightsandweekend: ultnaw6to7, textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "40"}, {fr: {name: "Rogers Appels et Textos 30",
    minutes: twentyfivecentminfr, nightsandweekend: ultnaw6to7fr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk and Text 40", pacsimId: "ROMP0006", carRel: "RO", msf: "40.75$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentyfivecentmin, nightsandweekend: ultnaw6to7, textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "50"}, {fr: {name: "Rogers Appels et Textos 40",
    minutes: twentyfivecentminfr, nightsandweekend: ultnaw6to7fr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk and Text 55", pacsimId: "ROMP0007", carRel: "RO", msf: "55.75$ + 911", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "CU", minutes: fre, nightsandweekend: any, textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentminute, uslongdistance: fiftycentminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: fre, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "60"}, {fr: {name: "Rogers Appels et Textos 55",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentminutefr, uslongdistance: fiftycentminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: frefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk and Text 70", pacsimId: "ROMP0008", carRel: "RO", msf: "70.75$ + 911", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "CU", minutes: fre, nightsandweekend: any, textmessages: fre, data: fifteencentMB, canlongdistance: fre, uslongdistance: fiftycentminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: fre, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "80"}, {fr: {name: "Rogers Appels et Textos 70",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: frefr, uslongdistance: fiftycentminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: frefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk, Text and Internet 20", pacsimId: "ROMP0009", carRel: "RO", msf: "20.75$ + 911", commission: "0", planCat: "VD", minCat: ["EM"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentyfivecentmin, nightsandweekend: "-", textmessages: fre, data: "100MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "30"}, {fr: {name: "Rogers Appels, Textos et Internet 20",
    minutes: twentyfivecentminfr, textmessages: frefr, data: "100Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk, Text and Internet 65", pacsimId: "ROMP0010", carRel: "RO", msf: "65.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NW", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentyfivecentmin, nightsandweekend: ultnaw6to7, textmessages: fre, data: "1GB" + fivecentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "70"}, {fr: {name: "Rogers Appels, Textos et Internet 65",
    minutes: twentyfivecentminfr, nightsandweekend: ultnaw6to7fr, textmessages: frefr, data: "1Go" + fivecentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
    RatePlans.insertTranslations {name: "Rogers Talk, Text and Internet 80", pacsimId: "ROMP0011", carRel: "RO", msf: "80.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "HE", minperiodRel: "NW", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentyfivecentmin, nightsandweekend: ultnaw6to7, textmessages: fre, data: "2GB" + fivecentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: seventyfiveoutmessfreein, intlvidmess: seventyfiveoutmessfreein, mintopup: "90"}, {fr: {name: "Rogers Appels, Textos et Internet 80",
    minutes: twentyfivecentminfr, nightsandweekend: ultnaw6to7fr, textmessages: frefr, data: "2Go" + fivecentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: seventyfiveoutmessfreeinfr, intlvidmess: seventyfiveoutmessfreeinfr}}
#Bell
    RatePlans.insertTranslations {name: "Bell Pay-per-use", pacsimId: "BEMP0001", carRel: "BE", msf: "0.75$ + 911", commission: "0", planCat: "VO", minCat: ["EM"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: fiftycentminute, nightsandweekend: "-", textmessages: thirtycentmessinout, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fortyoutthirtyin, picmessage: fiftycentinoutmess, vidmessage: "unknown", vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "15"}, {fr: {name: "Bell Payez à l'utilisation",
    minutes: fiftycentminutefr, textmessages: thirtycentmessinoutfr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: fortyoutthirtyinfr, picmessage: fiftycentinoutmessfr,
    vidmessage: "non connu", vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: "non connu"}}
    RatePlans.insertTranslations {name: "Bell Prepaid 15.75", pacsimId: "BEMP0002", carRel: "BE", msf: "15.75$ + 911", commission: "0", planCat: "VT", minCat: ["EM"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "CU", minutes: twentycentmin, nightsandweekend: "-", textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fortyoutfreein, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "25"}, {fr: {name: "Bell Prépayé 15.75",
    minutes: twentycentminfr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: fortyoutfreeinfr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: "Non connu", intlvidmess: "Non connu"}}
    RatePlans.insertTranslations {name: "Bell Prepaid 25.75", pacsimId: "BEMP0003", carRel: "BE", msf: "25.75$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "150" + twentycentminover, nightsandweekend: "-", textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "30"}, {fr: {name: "Bell Prépayé 25.75",
    minutes: "150" + twentycentminoverfr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Bell Prepaid 35.75", pacsimId: "BEMP0004", carRel: "BE", msf: "35.75$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "150" + twentycentminover, nightsandweekend: ultnaw6to7, textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "40"}, {fr: {name: "Bell Prépayé 35.75",
    minutes: "150" + twentycentminoverfr, nightsandweekend: ultnaw6to7fr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Bell Prepaid 55.75 Unlimited", pacsimId: "BEMP0005", carRel: "BE", msf: "55.75$ + 911", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "IU", vidmessRel: "IU", minutes: fre, nightsandweekend: any, textmessages: fre, data: fifteencentMB, canlongdistance: fiftycentminute, uslongdistance: fiftycentminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: fre, intlpicmess: fre, intlvidmess: fre, mintopup: "65"}, {fr: {name: "Bell 55.75 Prépayé Illimité",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fiftycentminutefr, uslongdistance: fiftycentminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: frefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Bell Prepaid 20.75 100MB", pacsimId: "BEMP0006", carRel: "BE", msf: "20.75$ + 911", commission: "0", planCat: "VD", minCat: ["EM"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: twentycentmin, nightsandweekend: "-", textmessages: fre, data: "100MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "25"}, {fr: {name: "Bell Prépayé 20.75 100MO",
    minutes: twentycentminfr, textmessages: frefr, data: "100Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Bell Prepaid 30.75 150min-200MB", pacsimId: "BEMP0007", carRel: "BE", msf: "30.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "150" + twentycentminover, nightsandweekend: "-", textmessages: fre, data: "200MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "40"}, {fr: {name: "Bell Prépayé 30.75 150min-200MO",
    minutes: "150" + twentycentminoverfr, textmessages: frefr, data: "200Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Bell Prepaid 30.75 N&W-200MB", pacsimId: "BEMP0008", carRel: "BE", msf: "30.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NW", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: twentycentmin, nightsandweekend: ultnaw6to7, textmessages: fre, data: "200MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "40"}, {fr: {name: "Bell Prépayé 30.75 N&W-200MO",
    minutes: twentycentminfr, nightsandweekend: ultnaw6to7fr, textmessages: frefr, data: "200Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Bell Prepaid 45.75 200MB", pacsimId: "BEMP0009", carRel: "BE", msf: "45.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NW", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "150" + twentycentminover, nightsandweekend: ultnaw6to7, textmessages: fre, data: "200MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "50"}, {fr: {name: "Bell Prépayé 45.75 200MO",
    minutes: "150" + twentycentminoverfr, textmessages: frefr, data: "200Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
#Telus
    RatePlans.insertTranslations {name: "Telus Pay-per-use", pacsimId: "TEMP0001", carRel: "TE", msf: "0.75$ + 911", commission: "0", planCat: "VO", minCat: ["EM"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: fiftycentminute, nightsandweekend: "-", textmessages: thirtycentmessinout, data: two$MB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fortyoutthirtyin, picmessage: thirtycentmessinout, vidmessage: thirtycentmessinout, vmail: same, intlpicmess: fortyoutthirtyin, intlvidmess: fortyoutthirtyin, mintopup: "15"}, {fr: {name: "Telus Payez à l'utilisation",
    minutes: fiftycentminutefr, textmessages: thirtycentmessinoutfr, data: two$MBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: fortyoutthirtyinfr, picmessage: thirtycentmessinoutfr,
    vidmessage: thirtycentmessinoutfr, vmail: samefr, intlpicmess: fortyoutthirtyinfr, intlvidmess: fortyoutthirtyinfr}}
    RatePlans.insertTranslations {name: "Telus Basic 15", pacsimId: "TEMP0002", carRel: "TE", msf: "15.75$ + 911", commission: "0", planCat: "VT", minCat: ["EM"], textCat: "SO", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "SO", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "50" + fifteencentminover, nightsandweekend: "-", textmessages: fivehundoutfreein, data: two$MB, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fivehundoutfreein, picmessage: fivehundoutfreein, vidmessage: fivehundoutfreein, vmail: same, intlpicmess: fivehundoutfreein, intlvidmess: fivehundoutfreein, mintopup: "25"}, {fr: {name: "Telus Essentiel 15",
    minutes: "50" + fifteencentminoverfr, textmessages: fivehundoutfreeinfr, data: two$MBfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: fivehundoutfreeinfr, picmessage: fivehundoutfreeinfr,
    vidmessage: fivehundoutfreeinfr, vmail: samefr, intlpicmess: fivehundoutfreeinfr, intlvidmess: fivehundoutfreeinfr}}
    RatePlans.insertTranslations {name: "Telus Unlimited 55", pacsimId: "TEMP0003", carRel: "TE", msf: "55.75$ + 911", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "IU", vidmessRel: "IU", minutes: fre, nightsandweekend: any, textmessages: fre, data: two$MB, canlongdistance: fiftycentminute, uslongdistance: fiftycentminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: fre, intlpicmess: fre, intlvidmess: fre, mintopup: "65"}, {fr: {name: "Telus Illimité 55",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: two$MBfr, canlongdistance: fiftycentminutefr, uslongdistance: fiftycentminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: frefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Telus Lite 25", pacsimId: "TEMP0004", carRel: "TE", msf: "25.75$ + 911", commission: "0", planCat: "VD", minCat: ["EM"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "50" + fifteencentminover, nightsandweekend: "-", textmessages: fre, data: "100MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "30"}, {fr: {name: "Telus Écono 25",
    minutes: "50" + fifteencentminoverfr, textmessages: frefr, data: "100Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Telus Social 35", pacsimId: "TEMP0005", carRel: "TE", msf: "35.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "100" + fifteencentminover, nightsandweekend: "-", textmessages: fre, data: "250MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "40"}, {fr: {name: "Telus Sociable 35",
    minutes: "100" + fifteencentminoverfr, textmessages: frefr, data: "250Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Telus Premium 45", pacsimId: "TEMP0006", carRel: "TE", msf: "45.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "150" + fifteencentminover, nightsandweekend: "-", textmessages: fre, data: "500MB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "50"}, {fr: {name: "Telus Extra 45",
    minutes: "150" + fifteencentminoverfr, textmessages: frefr, data: "500Mo" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Telus Ultimate 65", pacsimId: "TEMP0007", carRel: "TE", msf: "65.75$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "300" + fifteencentminover, nightsandweekend: "-", textmessages: fre, data: "1GB" + fifteencentMBover, canlongdistance: fiftycentontopminute, uslongdistance: fiftycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "75"}, {fr: {name: "Telus Supérieur 65",
    minutes: "300" + fifteencentminoverfr, textmessages: frefr, data: "1Go" + fifteencentMBoverfr, canlongdistance: fiftycentontopminutefr, uslongdistance: fiftycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
#Fido
    RatePlans.insertTranslations {name: "Fido By the minute", pacsimId: "FIMP0001", carRel: "FI", msf: "0.75$ + 911", commission: "0", planCat: "VO", minCat: ["EM"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: fortycentminute, nightsandweekend: "-", textmessages: thirtycentmessinfree, data: fifteencentMB, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutfreein, picmessage: fiftycentinoutmess, vidmessage: fiftycentinoutmess, vmail: same, intlpicmess: seventyfiveoutmessfiftyin, intlvidmess: seventyfiveoutmessfiftyin, mintopup: "10"}, {fr: {name: "Fido À la minute",
    minutes: fortycentminutefr, textmessages: thirtycentmessinfreefr, data: fifteencentMBfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutfreeinfr, picmessage: fiftycentinoutmessfr,
    vidmessage: fiftycentinoutmessfr, vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: seventyfiveoutmessfiftyinfr}}
    RatePlans.insertTranslations {name: "Fido By the day Incoming calls", pacsimId: "FIMP0002", carRel: "FI", msf: "0.75$ + 911 (1$/day)", commission: "0", planCat: "VO", minCat: ["SO"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: thirtyfivecentmin, nightsandweekend: "-", textmessages: twentyfiveoutinfree, data: fifteencentMB, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutfreein, picmessage: fiftycentinoutmess, vidmessage: fiftycentinoutmess, vmail: same, intlpicmess: seventyfiveoutmessfiftyin, intlvidmess: seventyfiveoutmessfiftyin, mintopup: "10"}, {fr: {name: "Fido À la journée Appels entrants", msf: "0.75$ + 911 (1$/jour)",
    minutes: thirtyfivecentminfr, textmessages: twentyfiveoutinfreefr, data: fifteencentMBfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutfreeinfr, picmessage: fiftycentinoutmessfr,
    vidmessage: fiftycentinoutmessfr, vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: seventyfiveoutmessfiftyinfr}}
    RatePlans.insertTranslations {name: "Fido By the day Nights&WE", pacsimId: "FIMP0003", carRel: "FI", msf: "0.75$ + 911 (1$/day)", commission: "0", planCat: "VO", minCat: ["SO"], textCat: "EM", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NI", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: thirtyfivecentmin, nightsandweekend: ultnaw6to8, textmessages: twentyfiveoutinfree, data: fifteencentMB, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutfreein, picmessage: fiftycentinoutmess, vidmessage: fiftycentinoutmess, vmail: same, intlpicmess: seventyfiveoutmessfiftyin, intlvidmess: seventyfiveoutmessfiftyin, mintopup: "10"}, {fr: {name: "Fido À la journée Soirs&WE", msf: "0.75$ + 911 (1$/jour)",
    minutes: thirtyfivecentminfr, nightsandweekend: ultnaw6to8fr, textmessages: twentyfiveoutinfreefr, data: fifteencentMBfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutfreeinfr, picmessage: fiftycentinoutmessfr,
    vidmessage: fiftycentinoutmessfr, vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: seventyfiveoutmessfiftyinfr}}
    RatePlans.insertTranslations {name: "Fido By the month 15.75", pacsimId: "FIMP0004", carRel: "FI", msf: "15.75$ + 911", commission: "0", planCat: "VT", minCat: ["EM"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NI", canldRel: "EME", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: "0.30$ each minute", nightsandweekend: "-", textmessages: fre, data: fifteencentMB, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fiftycentinoutmess, vidmessage: fiftycentinoutmess, vmail: same, intlpicmess: seventyfiveoutmessfiftyin, intlvidmess: seventyfiveoutmessfiftyin, mintopup: "20"}, {fr: {name: "Fido Au mois 15.75",
    minutes: "0.30$ chaque minute", textmessages: frefr, data: fifteencentMBfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: fiftycentinoutmessfr,
    vidmessage: fiftycentinoutmessfr, vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: seventyfiveoutmessfiftyinfr}}
    RatePlans.insertTranslations {name: "Fido By the month 25.75", pacsimId: "FIMP0005", carRel: "FI", msf: "25.75$ + 911", commission: "0", planCat: "VT", minCat: ["EM"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NO", canldRel: "RM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: thirtyfivecentmin, nightsandweekend: ultnaw7to7, textmessages: fre, data: fifteencentMB, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fiftycentinoutmess, vidmessage: fiftycentinoutmess, vmail: same, intlpicmess: seventyfiveoutmessfiftyin, intlvidmess: seventyfiveoutmessfiftyin, mintopup: "30"}, {fr: {name: "Fido Au mois 25.75",
    minutes: thirtyfivecentminfr, nightsandweekend: ultnaw7to7fr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: fiftycentinoutmessfr,
    vidmessage: fiftycentinoutmessfr, vmail: samefr, intlpicmess: seventyfiveoutmessfiftyinfr, intlvidmess: seventyfiveoutmessfiftyinfr}}
    RatePlans.insertTranslations {name: "Fido By the month 30", pacsimId: "FIMP0006", carRel: "FI", msf: "30$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NO", canldRel: "SO", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "250" + fortyfivecentminover, nightsandweekend: ultnaw5to7, textmessages: fre, data: fifteencentMB, canlongdistance: "250" + fortyfivecentminover, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "40"}, {fr: {name: "Fido Au mois 30",
    minutes: "250" + fortyfivecentminoverfr, nightsandweekend: ultnaw5to7fr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: "250" + fortyfivecentminoverfr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Fido By the month 35", pacsimId: "FIMP0007", carRel: "FI", msf: "35$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NO", canldRel: "SO", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "500" + fortyfivecentminover, nightsandweekend: ultnaw5to7, textmessages: fre, data: fifteencentMB, canlongdistance: "500" + fortyfivecentminover, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "40"}, {fr: {name: "Fido Au mois 35",
    minutes: "500" + fortyfivecentminoverfr, nightsandweekend: ultnaw5to7fr, textmessages: frefr, data: fifteencentMBfr, canlongdistance: "500" + fortyfivecentminoverfr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Fido By the month 45", pacsimId: "FIMP0008", carRel: "FI", msf: "45$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NW", inccallsRel: "NO", canldRel: "SO", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "IU", minutes: "300" + fortyfivecentminover, nightsandweekend: ultnaw5to7, textmessages: fre, data: "400MB" + fivecentMBover, canlongdistance: "300" + fortyfivecentminover, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "50"}, {fr: {name: "Fido Au mois 45",
    minutes: "300" + fortyfivecentminoverfr, nightsandweekend: ultnaw5to7fr, textmessages: frefr, data: "400Mo" + fivecentMBoverfr, canlongdistance: "300" + fortyfivecentminoverfr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Fido By the month 55", pacsimId: "FIMP0009", carRel: "FI", msf: "55$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NW", inccallsRel: "NO", canldRel: "SO", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NO", picmessRel: "IU", vidmessRel: "IU", minutes: "500" + fortyfivecentminover, nightsandweekend: ultnaw5to7, textmessages: fre, data: "750MB" + fivecentMBover, canlongdistance: "500" + fortyfivecentminover, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: same, intlpicmess: fre, intlvidmess: fre, mintopup: "60"}, {fr: {name: "Fido Au mois 55",
    minutes: "500" + fortyfivecentminoverfr, nightsandweekend: ultnaw5to7fr, textmessages: frefr, data: "750Mo" + fivecentMBoverfr, canlongdistance: "500" + fortyfivecentminoverfr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: samefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Fido By the month 60", pacsimId: "FIMP0010", carRel: "FI", msf: "60$ + 911", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "IU", vidmessRel: "IU", minutes: fre, nightsandweekend: any, textmessages: fre, data: "1GB" + twocentMBover, canlongdistance: fre, uslongdistance: fortycentminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: fre, intlpicmess: fre, intlvidmess: fre, mintopup: "70"}, {fr: {name: "Fido Au mois 60",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "1Go" + twocentMBoverfr, canlongdistance: frefr, uslongdistance: fortycentminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: frefr, intlpicmess: frefr, intlvidmess: frefr}}
    RatePlans.insertTranslations {name: "Fido By the month 70", pacsimId: "FIMP0011", carRel: "FI", msf: "70$ + 911", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "HE", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "IU", vidmessRel: "IU", minutes: fre, nightsandweekend: any, textmessages: fre, data: "2GB" + twocentMBover, canlongdistance: fre, uslongdistance: fortycentminute, intllongdistance: dep,
    intltextmess: fre, picmessage: fre, vidmessage: fre, vmail: fre, intlpicmess: fre, intlvidmess: fre, mintopup: "80"}, {fr: {name: "Fido Au mois 70",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "1Go" + twocentMBoverfr, canlongdistance: frefr, uslongdistance: fortycentminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: frefr,
    vidmessage: frefr, vmail: frefr, intlpicmess: frefr, intlvidmess: frefr}}
#Virgin
    RatePlans.insertTranslations {name: "Virgin Pay per use", pacsimId: "VIMP0001", carRel: "VI", msf: "0.75$ + 911", commission: "0", planCat: "VO", minCat: ["EM"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: fortycentminute, nightsandweekend: "-", textmessages: thirtycentmessinout, data: one$10MB24h, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutthirtyin, picmessage: "unknown", vidmessage: "unknown", vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "15"}, {fr: {name: "Virgin Payez à l'utilisation",
    minutes: fortycentminutefr, textmessages: thirtycentmessinoutfr, data: one$10MB24hfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutthirtyinfr, picmessage: "non connu",
    vidmessage: "non connu", vmail: samefr, intlpicmess: "non connu", intlvidmess: "non connu"}}
    RatePlans.insertTranslations {name: "Virgin Anytimes minutes", pacsimId: "VIMP0002", carRel: "VI", msf: "15$ + 911", commission: "0", planCat: "VO", minCat: ["SO"], textCat: "EM", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: "50" + thirtycentminover, nightsandweekend: "-", textmessages: thirtycentmessinout, data: one$10MB24h, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: thirtyfiveoutthirtyin, picmessage: "unknown", vidmessage: "unknown", vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "25"}, {fr: {name: "Virgin Appels en tout temps",
    minutes: "50" + thirtycentminoverfr, textmessages: thirtycentmessinoutfr, data: one$10MB24hfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: thirtyfiveoutthirtyinfr, picmessage: "non connu",
    vidmessage: "non connu", vmail: samefr, intlpicmess: "non connu", intlvidmess: "non connu"}}
    RatePlans.insertTranslations {name: "Virgin Talk and Text 25", pacsimId: "VIMP0003", carRel: "VI", msf: "25$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: "50" + thirtycentminover, nightsandweekend: "-", textmessages: fre, data: one$10MB24h, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: "unknown", vidmessage: "unknown", vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "40"}, {fr: {name: "Virgin Appels et Textos 25",
    minutes: "50" + thirtycentminoverfr, textmessages: frefr, data: one$10MB24hfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: "non connu",
    vidmessage: "non connu", vmail: samefr, intlpicmess: "non connu", intlvidmess: "non connu"}}
    RatePlans.insertTranslations {name: "Virgin Talk and Text 25 N&W", pacsimId: "VIMP0004", carRel: "VI", msf: "25$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NI", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: thirtycentmin, nightsandweekend: ultnaw7to7, textmessages: fre, data: one$10MB24h, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: "unknown", vidmessage: "unknown", vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "40"}, {fr: {name: "Virgin Appels et Textos 25 S&W",
    minutes: thirtycentminfr, nightsandweekend: ultnaw7to7fr, textmessages: frefr, data: one$10MB24hfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: "non connu",
    vidmessage: "non connu", vmail: samefr, intlpicmess: "non connu", intlvidmess: "non connu"}}
    RatePlans.insertTranslations {name: "Virgin Talk and Text 35", pacsimId: "VIMP0005", carRel: "VI", msf: "35$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: "150" + thirtycentminover, nightsandweekend: "-", textmessages: fre, data: one$10MB24h, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: "unknown", vidmessage: "unknown", vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "40"}, {fr: {name: "Virgin Appels et Textos 35",
    minutes: "150" + thirtycentminoverfr, textmessages: frefr, data: one$10MB24hfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: "non connu",
    vidmessage: "non connu", vmail: samefr, intlpicmess: "non connu", intlvidmess: "non connu"}}
    RatePlans.insertTranslations {name: "Virgin Talk and Data 35", pacsimId: "VIMP0006", carRel: "VI", msf: "35$ + 911", commission: "0", planCat: "VD", minCat: ["SO"], textCat: "UN", dataCat: "SO", minperiodRel: "NW", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: thirtycentmin, nightsandweekend: ultnaw7to7, textmessages: fre, data: "250MB" + fifteencentMBover, canlongdistance: fortycentontopminute, uslongdistance: fortycentontopminute, intllongdistance: dep,
    intltextmess: fre, picmessage: "unknown", vidmessage: "unknown", vmail: same, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "40"}, {fr: {name: "Virgin Appels et Données 35",
    minutes: thirtycentminfr, nightsandweekend: ultnaw7to7fr, textmessages: frefr, data: "250Mo" + fifteencentMBoverfr, canlongdistance: fortycentontopminutefr, uslongdistance: fortycentontopminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: "non connu",
    vidmessage: "non connu", vmail: samefr, intlpicmess: "non connu", intlvidmess: "non connu"}}
    RatePlans.insertTranslations {name: "Virgin Talk and Text 55", pacsimId: "VIMP0007", carRel: "VI", msf: "55$ + 911", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: one$10MB24h, canlongdistance: fortycentminute, uslongdistance: fortycentminute, intllongdistance: dep,
    intltextmess: fre, picmessage: "unknown", vidmessage: "unknown", vmail: fre, intlpicmess: "unknown", intlvidmess: "unknown", mintopup: "65"}, {fr: {name: "Virgin Appels et Textos 55",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: one$10MB24hfr, canlongdistance: fortycentminutefr, uslongdistance: fortycentminutefr, intllongdistance: depfr, intltextmess: frefr, picmessage: "non connu",
    vidmessage: "non connu", vmail: frefr, intlpicmess: "non connu", intlvidmess: "non connu"}}
#Koodo
    RatePlans.insertTranslations {name: "Koodo Text only 15", pacsimId: "KOMP0001", carRel: "KO", msf: "15$ + 911", commission: "0", planCat: "VT", minCat: ["EM"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "NO", minutes: "-", nightsandweekend: "-", textmessages: fre, data: "-", canlongdistance: "-", uslongdistance: "-", intllongdistance: "-",
    intltextmess: fre, picmessage: fre, vidmessage: "-", vmail: "-", intlpicmess: fre, intlvidmess: "-", mintopup: "25"}, {fr: {name: "Koodo Textos seulement 15",
    textmessages: frefr, intltextmess: frefr, picmessage: frefr, intlpicmess: frefr}}
    RatePlans.insertTranslations {name: "Koodo Talk and Text 25", pacsimId: "KOMP0002", carRel: "KO", msf: "25$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "NO", minutes: "-", nightsandweekend: ultnaw7to8, textmessages: fre, data: "-", canlongdistance: "-", uslongdistance: "-", intllongdistance: "-",
    intltextmess: fre, picmessage: fre, vidmessage: "-", vmail: "-", intlpicmess: fre, intlvidmess: "-", mintopup: "30"}, {fr: {name: "Koodo Appels et Textos 25",
    textmessages: frefr, intltextmess: frefr, picmessage: frefr, intlpicmess: frefr}}
    RatePlans.insertTranslations {name: "Koodo Talk and Text 35", pacsimId: "KOMP0003", carRel: "KO", msf: "35$ + 911", commission: "0", planCat: "VT", minCat: ["SO"], textCat: "UN", dataCat: "EM", minperiodRel: "NW", inccallsRel: "IN", canldRel: "SO", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "NI", picmessRel: "IU", vidmessRel: "NO", minutes: "-", nightsandweekend: ultnaw5to8, textmessages: fre, data: "-", canlongdistance: "-", uslongdistance: "-", intllongdistance: "-",
    intltextmess: fre, picmessage: fre, vidmessage: "-", vmail: "-", intlpicmess: fre, intlvidmess: "-", mintopup: "40"}, {fr: {name: "Koodo Appels et Textos 35",
    nightsandweekend: ultnaw5to8fr, textmessages: frefr, intltextmess: frefr, picmessage: frefr, intlpicmess: frefr}}
    RatePlans.insertTranslations {name: "Koodo Talk and Text 50", pacsimId: "KOMP0004", carRel: "KO", msf: "50$ + 911", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "IU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "-", canlongdistance: fre, uslongdistance: "-", intllongdistance: "-",
    intltextmess: fre, picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: fre, intlvidmess: "-", mintopup: "60"}, {fr: {name: "Koodo Appels et Textos 50",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, canlongdistance: frefr, intltextmess: frefr, picmessage: frefr, vmail: frefr, intlpicmess: frefr}}
    RatePlans.insertTranslations {name: "Koodo Talk and Data 80", pacsimId: "KOMP0005", carRel: "KO", msf: "80$ + 911", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "IU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "1GB", canlongdistance: fre, uslongdistance: "-", intllongdistance: "-",
    intltextmess: fre, picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: fre, intlvidmess: "-", mintopup: "85"}, {fr: {description: "Koodo Appels et Données", minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "1Go", canlongdistance: frefr, intltextmess: frefr, picmessage: frefr, vmail: frefr, intlpicmess: frefr}}
#Chat-R
    RatePlans.insertTranslations {name: "Chat-R Talk plan 20", pacsimId: "CHMP0001", carRel: "CH", msf: "20$", commission: "0", planCat: "VO", minCat: ["UN"], textCat: "EM", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "ZR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: twentyfiveoutinfree, data: "-", canlongdistance: twentyfivecentmin, uslongdistance: twentyfivecentmin, intllongdistance: dep,
    intltextmess: twentyfiveoutinfree, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: twentyfivecentmin, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "20"}, {fr: {name: "Chat-R Forfait appels 20",
    minutes: frefr, nightsandweekend: anyfr, textmessages: twentyfiveoutinfreefr, canlongdistance: twentyfivecentminfr, uslongdistance: twentyfivecentminfr, intllongdistance: depfr, intltextmess: twentyfiveoutinfreefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: twentyfivecentminfr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Text 25", pacsimId: "CHMP0002", carRel: "CH", msf: "25$", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "SO", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "SO",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: "100 outgoing messages (incoming free) " + twentyfivecentmessover, data: "-", canlongdistance: provwideult + " " + twentyfivecentmin, uslongdistance: twentyfivecentmin, intllongdistance: dep,
    intltextmess: twentyfiveoutinfree, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: twentyfivecentmin, intlpicmess: fiftycentoutfreein, intlvidmess:fiftycentoutfreein , mintopup: "25"}, {fr: {name: "Chat-R Appels et Textos 25",
    minutes: frefr, nightsandweekend: anyfr, textmessages: "100 messages sortants (entrants gratuits) " + twentyfivecentmessoverfr, canlongdistance: provwideultfr + " " + twentyfivecentminfr, uslongdistance: twentyfivecentminfr, intllongdistance: depfr, intltextmess: twentyfiveoutinfreefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: twentyfivecentminfr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Text 35", pacsimId: "CHMP0003", carRel: "CH", msf: "35$", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "-", canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: twentyfiveoutinfree, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "35"}, {fr: {name: "Chat-R Appels et Textos 35",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: twentyfiveoutinfreefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Text 40", pacsimId: "CHMP0004", carRel: "CH", msf: "40$", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "NO", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "-", canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: fre, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "40"}, {fr: {name: "Chat-R Appels et Textos 40",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: frefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Data 45", pacsimId: "CHMP0005", carRel: "CH", msf: "45$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "500MB" + fivecentMBover, canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: twentyfiveoutinfree, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "45"}, {fr: {name: "Chat-R Appels et Données 45",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "500Mo" + fivecentMBoverfr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: twentyfiveoutinfreefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Data 50 Intl Text", pacsimId: "CHMP0006", carRel: "CH", msf: "50$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "500MB" + fivecentMBover, canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: fre, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "50"}, {fr: {name: "Chat-R Appels et Données 50 Textos Intl",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "500Mo" + fivecentMBoverfr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: frefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Data 50 1GB", pacsimId: "CHMP0007", carRel: "CH", msf: "50$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "1GB" + fivecentMBover, canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: twentyfiveoutinfree, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "50"}, {fr: {name: "Chat-R Appels et Données 50 1Go",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "1Go" + fivecentMBoverfr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: twentyfiveoutinfreefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Data 55", pacsimId: "CHMP0008", carRel: "CH", msf: "55$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "1GB" + fivecentMBover, canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: fre, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "55"}, {fr: {name: "Chat-R Appels et Données",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "1Go" + fivecentMBoverfr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: frefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Data 60", pacsimId: "CHMP0009", carRel: "CH", msf: "60$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "HE", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "2GB" + fivecentMBover, canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: twentyfiveoutinfree, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "60"}, {fr: {name: "Chat-R Appels et Données 60",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "2Go" + fivecentMBoverfr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: twentyfiveoutinfreefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
    RatePlans.insertTranslations {name: "Chat-R Talk and Data 65", pacsimId: "CHMP0010", carRel: "CH", msf: "65$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "HE", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "SO",
    intltextRel: "UN", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "2GB" + fivecentMBover, canlongdistance: fre, uslongdistance: twentycentmin, intllongdistance: dep,
    intltextmess: fre, picmessage: fiftycentoutfreein, vidmessage: fiftycentoutfreein, vmail: fre, intlpicmess: fiftycentoutfreein, intlvidmess: fiftycentoutfreein, mintopup: "65"}, {fr: {name: "Chat-R Appels et Données 65",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "2Go" + fivecentMBoverfr, canlongdistance: frefr, uslongdistance: twentycentminfr, intllongdistance: depfr, intltextmess: frefr, picmessage: fiftycentoutfreeinfr,
    vidmessage: fiftycentoutfreeinfr, vmail: frefr, intlpicmess: fiftycentoutfreeinfr, intlvidmess: fiftycentoutfreeinfr}}
#Public Mobile
    RatePlans.insertTranslations {name: "Public Mobile Talk 30", pacsimId: "PUMP0001", carRel: "PU", msf: "30$", commission: "0", planCat: "VO", minCat: ["UN"], textCat: "EM", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: "-", data: "-", canlongdistance: provwideult + " only", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: "-", vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "30"}, {fr: {name: "Public Mobile Appels 30",
    minutes: frefr, nightsandweekend: anyfr, canlongdistance: provwideultfr + " seulement", vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Talk 35", pacsimId: "PUMP0002", carRel: "PU", msf: "35$", commission: "0", planCat: "VO", minCat: ["UN"], textCat: "EM", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "NO", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: "-", data: "-", canlongdistance: fre, uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: "-", vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "35"}, {fr: {name: "Public Mobile Appels 35",
    minutes: frefr, nightsandweekend: anyfr, canlongdistance: frefr, vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Talk and Text 35", pacsimId: "PUMP0003", carRel: "PU", msf: "35$", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "-", canlongdistance: provwideult + " only", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "35"}, {fr: {name: "Public Mobile Appels et Textos 35",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, canlongdistance: provwideultfr + " seulement", picmessage: frefr, vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Text and Data 35", pacsimId: "PUMP0004", carRel: "PU", msf: "35$", commission: "0", planCat: "VD", minCat: ["EM"], textCat: "UN", dataCat: "SO", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "NO", minutes: "-", nightsandweekend: "-", textmessages: fre, data: "1GB", canlongdistance: "-", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: "-", intlpicmess: "-", intlvidmess: "-", mintopup: "35"}, {fr: {name: "Public Mobile Textos et Données 35",
    textmessages: frefr, data: "1Go", picmessage: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Talk and Text 40", pacsimId: "PUMP0005", carRel: "PU", msf: "40$", commission: "0", planCat: "VT", minCat: ["UN"], textCat: "UN", dataCat: "EM", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "-", canlongdistance: fre, uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "40"}, {fr: {name: "Public Mobile Appels et Textos 40",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, canlongdistance: frefr, picmessage: frefr, vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Talk, Text and Data 45", pacsimId: "PUMP0006", carRel: "PU", msf: "45$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "1GB", canlongdistance: provwideult + " only", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "45"}, {fr: {name: "Public Mobile Appels, Textos et Données 45",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "1Go", canlongdistance: provwideultfr + " seulement", picmessage: frefr, vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Talk, Text and Data 50", pacsimId: "PUMP0007", carRel: "PU", msf: "50$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "SO", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "1GB", canlongdistance: fre, uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "50"}, {fr: {name: "Public Mobile Appels, Textos et Données 50",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "1Go", canlongdistance: frefr, picmessage: frefr, vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Text and Data 65", pacsimId: "PUMP0008", carRel: "PU", msf: "65$", commission: "0", planCat: "VD", minCat: ["EM"], textCat: "UN", dataCat: "HE", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "CU", vidmessRel: "NO", minutes: "-", nightsandweekend: "-", textmessages: fre, data: "4GB", canlongdistance: "-", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: "-", intlpicmess: "-", intlvidmess: "-", mintopup: "65"}, {fr: {name: "Public Mobile Textos et Données 65",
    textmessages: frefr, data: "4Go", picmessage: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Talk, Text and Data 75", pacsimId: "PUMP0009", carRel: "PU", msf: "75$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "HE", minperiodRel: "DA", inccallsRel: "IN", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "4GB", canlongdistance: provwideult + " only", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "75"}, {fr: {name: "Public Mobile Appels, Textos et Données 75",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "4Go", canlongdistance: provwideultfr + " seulement", picmessage: frefr, vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Talk, Text and Data 80", pacsimId: "PUMP0010", carRel: "PU", msf: "80$", commission: "0", planCat: "VD", minCat: ["UN"], textCat: "UN", dataCat: "HE", minperiodRel: "DA", inccallsRel: "IN", canldRel: "UN", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "IN", picmessRel: "CU", vidmessRel: "NO", minutes: fre, nightsandweekend: any, textmessages: fre, data: "4GB", canlongdistance: fre, uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: fre, vidmessage: "-", vmail: fre, intlpicmess: "-", intlvidmess: "-", mintopup: "80"}, {fr: {name: "Public Mobile Appels, Textos et Données 80",
    minutes: frefr, nightsandweekend: anyfr, textmessages: frefr, data: "4Go", canlongdistance: frefr, picmessage: frefr, vmail: frefr}}
    RatePlans.insertTranslations {name: "Public Mobile Data 30", pacsimId: "PUMP0011", carRel: "PU", msf: "30$", commission: "0", planCat: "DO", minCat: ["EM"], textCat: "EM", dataCat: "SO", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: "-", nightsandweekend: "-", textmessages: "-", data: "1GB", canlongdistance: "-", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: "-", vidmessage: "-", vmail: "-", intlpicmess: "-", intlvidmess: "-", mintopup: "30"}, {fr: {name: "Public Mobile Données 30", data: "1Go"}}
    RatePlans.insertTranslations {name: "Public Mobile Data 60", pacsimId: "PUMP0012", carRel: "PU", msf: "60$", commission: "0", planCat: "DO", minCat: ["EM"], textCat: "EM", dataCat: "HE", minperiodRel: "NO", inccallsRel: "NO", canldRel: "EM", usldRel: "EM", intlldRel: "EM",
    intltextRel: "EM", zonerestRel: "NR", vmRel: "NI", picmessRel: "NO", vidmessRel: "NO", minutes: "-", nightsandweekend: "-", textmessages: "-", data: "4GB", canlongdistance: "-", uslongdistance: "-", intllongdistance: "-",
    intltextmess: "-", picmessage: "-", vidmessage: "-", vmail: "-", intlpicmess: "-", intlvidmess: "-", mintopup: "60"}, {fr: {name: "Public Mobile Données 60", data: "4Go"}}
