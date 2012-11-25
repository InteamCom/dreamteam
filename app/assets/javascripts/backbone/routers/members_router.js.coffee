class Teamr.Routers.MembersRouter extends Backbone.Router
  initialize: (options) ->
    @members = new Teamr.Collections.MembersCollection(options)
    @members.reset options.members

  routes:
    "members/index"    : "index"
    "members/:id"      : "show"
    "members/.*"       : "index"

  index: ->
    @view = new Teamr.Views.Members.IndexView(members: @members)
    $("#members").html(@view.render().el)

  show: (id) ->
    member = @members.get(id)

    @view = new Teamr.Views.Members.ShowView(model: member)
    $("#members").html(@view.render().el)
