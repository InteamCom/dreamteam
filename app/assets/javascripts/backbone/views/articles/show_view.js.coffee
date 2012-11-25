Teamr.Views.Articles ||= {}

class Teamr.Views.Articles.ShowView extends Backbone.View
  template: JST["backbone/templates/articles/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
