Teamr.Views.Activities ||= {}

class Teamr.Views.Activities.EditView extends Backbone.View
  template : JST["backbone/templates/activities/edit"]

  events :
    "submit #edit-activity" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (activity) =>
        @model = activity
        window.location.hash = "/activities/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
