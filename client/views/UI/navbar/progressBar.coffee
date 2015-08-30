Template.homeUI.rendered = ->
  $('#progress-bar').progress
    percent: 0

Template.productSelection.rendered = ->
  $('#progress-bar').progress
    percent: 20

Template.actoPrompt.rendered = ->
  $('#progress-bar').progress
    percent: 30

Template.manualActoCarriers.rendered = ->
  $('#progress-bar').progress
    percent: 40

Template.simCarriers.rendered = ->
  $('#progress-bar').progress
    percent: 40

Template.ppdCarriers.rendered = ->
  $('#progress-bar').progress
    percent: 40

Template.simCards.rendered = ->
  $('#progress-bar').progress
    percent: 60

Template.ppdCards.rendered = ->
  $('#progress-bar').progress
    percent: 60

Template.shoppingCart.rendered = ->
  if CartItems.find().count() > 0
    $('#progress-bar').progress
      percent: 80
  else
    $('#progress-bar').progress
      percent: 20
