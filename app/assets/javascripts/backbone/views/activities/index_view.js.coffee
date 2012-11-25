Teamr.Views.Activities ||= {}

class Teamr.Views.Activities.IndexView extends Backbone.View
  template: JST["backbone/templates/activities/index"]

  initialize: () ->
    @options.activities.bind('reset', @addAll)

  addAll: () =>
    @options.activities.each(@addOne)

  addOne: (activity) =>
    view = new Teamr.Views.Activities.ActivityView({model : activity})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(activities: @options.activities.toJSON() ))
    @addAll()

    return this
