Teamr.Views.Vacancies ||= {}

class Teamr.Views.Vacancies.ShowView extends Backbone.View
  template: JST["backbone/templates/vacancies/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
