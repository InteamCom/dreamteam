class Teamr.Routers.ActivitiesRouter extends Backbone.Router
  initialize: (options) ->
    @activities = new Teamr.Collections.ActivitiesCollection(options)
    @activities.reset options.activities

  routes:
    "activities/index"    : "index"
    "activities/:id"      : "show"
    "activities/.*"       : "index"

  index: ->
    @view = new Teamr.Views.Activities.IndexView(activities: @activities)
    $("#activities").html(@view.render().el)

  show: (id) ->
    activity = @activities.get(id)

    @view = new Teamr.Views.Activities.ShowView(model: activity)
    $("#activities").html(@view.render().el)