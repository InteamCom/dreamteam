Teamr.Views.Members ||= {}

class Teamr.Views.Members.IndexView extends Backbone.View
  template: JST["backbone/templates/members/index"]

  initialize: () ->
    @options.members.bind('reset', @addAll)

  addAll: () =>
    @options.members.each(@addOne)

  addOne: (member) =>
    view = new Teamr.Views.Members.MemberView({model : member})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(members: @options.members.toJSON() ))
    @addAll()

    return this
