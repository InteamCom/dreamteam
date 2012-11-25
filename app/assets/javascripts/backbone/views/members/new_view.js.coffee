Teamr.Views.Members ||= {}

class Teamr.Views.Members.NewView extends Backbone.View
  template: JST["backbone/templates/members/new"]

  events:
    "submit #new-member": "save"

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
      success: (member) =>
        @model = member
        window.location.hash = "/members/#{@model.id}"

      error: (member, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
