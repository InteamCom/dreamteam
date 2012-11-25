Teamr.Views.Members ||= {}

class Teamr.Views.Members.EditView extends Backbone.View
  template : JST["backbone/templates/members/edit"]

  events :
    "submit #edit-member" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (member) =>
        @model = member
        window.location.hash = "/members/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
