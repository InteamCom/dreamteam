Teamr.Views.Articles ||= {}

class Teamr.Views.Articles.EditView extends Backbone.View
  template : JST["backbone/templates/articles/edit"]

  events :
    "submit #edit-article" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (article) =>
        @model = article
        window.location.hash = "/articles/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
