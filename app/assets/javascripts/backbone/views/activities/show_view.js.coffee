Teamr.Views.Activities ||= {}

class Teamr.Views.Activities.ShowView extends Backbone.View
  template: JST["backbone/templates/activities/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
