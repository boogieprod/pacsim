Template.uiFooter.events
  "click #goBack": ->
    if Router.current().route.getName() is 'homeUI'
      sAlert.error TAPi18n.__ 'homepage_back_error'
    else
     history.back()
