Teamr.Views.Vacancies ||= {}

class Teamr.Views.Vacancies.NewView extends Backbone.View
  template: JST["backbone/templates/vacancies/new"]

  events:
    "submit #new-vacancy": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (vacancy) =>
        @model = vacancy
        window.location.hash = "/vacancies/#{@model.id}"

      error: (vacancy, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
