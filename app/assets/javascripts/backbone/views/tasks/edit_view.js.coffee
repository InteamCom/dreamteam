Teamr.Views.Tasks ||= {}

class Teamr.Views.Tasks.EditView extends Backbone.View
  template : JST["backbone/templates/tasks/edit"]

  events :
    "submit #edit-task" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (task) =>
        @model = task
        window.location.hash = "/tasks/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
