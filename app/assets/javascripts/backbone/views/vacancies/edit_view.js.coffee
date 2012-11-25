Teamr.Views.Vacancies ||= {}

class Teamr.Views.Vacancies.EditView extends Backbone.View
  template : JST["backbone/templates/vacancies/edit"]

  events :
    "submit #edit-vacancy" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (vacancy) =>
        @model = vacancy
        window.location.hash = "/vacancies/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
