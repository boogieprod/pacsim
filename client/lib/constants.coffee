# Define App Constants

if Meteor.App
  throw new (Meteor.Error)('Meteor.App already defined? see client/lib/constants.js')

Meteor.App =
  NAME: 'PacSim project'
  DESCRIPTION: 'PacSim is a new project for retailing prepaid SIM cards in a dispensing machine'
