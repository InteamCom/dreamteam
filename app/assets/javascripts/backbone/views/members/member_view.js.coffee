Teamr.Views.Members ||= {}

class Teamr.Views.Members.MemberView extends Backbone.View
  template: JST["backbone/templates/members/member"]

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
