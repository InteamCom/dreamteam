Teamr.Views.Vacancies ||= {}

class Teamr.Views.Vacancies.VacancyView extends Backbone.View
  template: JST["backbone/templates/vacancies/vacancy"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
