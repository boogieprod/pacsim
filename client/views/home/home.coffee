Template.home.helpers
  'feature': ->
    [
      {
        'text': ->
          TAPi18n.__ 'trust_packages'
        'icon': 'archive'
        'path': '#packages'
      }
      {
        'text': ->
          TAPi18n.__ 'console_tool'
        'icon': 'terminal'
        'path': '#console-tool'
      }
      {
        'text': ->
          TAPi18n.__ 'embraces_html5'
        'icon': 'html5'
        'color': 'hover-orange'
        'path': '#html5'
      }
      {
        'text': ->
          TAPi18n.__ 'provides_structure'
        'icon': 'folder'
        'path': '#structure'
      }
    ]
  'package': ->
    [
      {
        'name': 'Iron Router'
        'path': 'https://github.com/EventedMind/iron-router'
      }
      {
        'name': 'Collection2'
        'path': 'https://github.com/aldeed/meteor-collection2'
      }
      {
        'name': 'Semantic UI'
        'path': 'http://semantic-ui.com/'
      }
      {
        'name': 'less'
        'path': 'http://lesscss.org/'
      }
      {
        'name': 'jQuery'
        'path': 'http://jquery.com/'
      }
      {
        'name': 'Underscore'
        'path': 'http://underscorejs.org/'
      }
      {
        'name': 'Accounts UI & Password'
        'path': 'http://docs.meteor.com/#accountsui'
      }
    ]
  'consoleCommand': ->
    [
      {
        'command': 'view'
        'description': ->
          TAPi18n.__ 'view_description'
      }
      {
        'command': 'module'
        'description': ->
          TAPi18n.__ 'module_description'
      }
      {
        'command': 'layout'
        'description': ->
          TAPi18n.__ 'layout_description'
      }
      {
        'command': 'common'
        'description': ->
          TAPi18n.__ 'common_description'
      }
      {
        'command': 'routes'
        'description': ->
          TAPi18n.__ 'routes_description'
      }
      {
        'command': 'model'
        'description': ->
          TAPi18n.__ 'model_description'
      }
      {
        'command': 'less'
        'description': ->
          TAPi18n.__ 'less_description'
      }
    ]
  'semanticElement': ->
    [
      {
        'what': ->
          TAPi18n.__ 'large_buttons'
        'withBootstrap': 'btn btn-lg'
        'withSemanticUI': 'ui large button'
      }
      {
        'what': ->
          TAPi18n.__ 'one_column'
        'withBootstrap': 'col-md-1'
        'withSemanticUI': 'one wide column'
      }
      {
        'what': ->
          TAPi18n.__ 'vertical_menu'
        'withBootstrap': 'nav nav-pills'
        'withSemanticUI': 'ui vertical menu'
      }
    ]
  'bootstrapCode': ->
    '<div class="btn btn-primary btn-lg"></div>'
  'folder': ->
    [
      {
        'root': 'client'
        'children': [
          'compatibility'
          'config'
          ' lib'
          ' startup'
          ' stylesheets'
          'modules'
          'views'
        ]
      }
      { 'root': 'model' }
      { 'root': 'routes' }
      { 'root': 'private' }
      {
        'root': 'server'
        'children': [
          'fixtures'
          'lib'
          'publications'
          'startup'
        ]
      }
      { 'root': 'public' }
      { 'root': 'meteor-boilerplate' }
    ]
Template.home.events {}

Template.home.rendered = ->
  # @see: http://stackoverflow.com/questions/5284814/jquery-scroll-to-div
  $('a[href*=#]:not([href=#])').click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html, body').animate { scrollTop: target.offset().top }, 1000
        return false
    true
  return
