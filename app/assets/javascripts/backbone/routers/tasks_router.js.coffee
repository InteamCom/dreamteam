class Teamr.Routers.TasksRouter extends Backbone.Router
  initialize: (options) ->
    @tasks = new Teamr.Collections.TasksCollection(options)
    @tasks.reset options.tasks

  routes:
    "tasks/new"      : "newTask"
    "tasks/index"    : "index"
    "tasks/:id/edit" : "edit"
    "tasks/:id"      : "show"
    "tasks/.*"       : "index"

  newTask: ->
    @view = new Teamr.Views.Tasks.NewView(collection: @tasks)
    $("#tasks").html(@view.render().el)

  index: ->
    @view = new Teamr.Views.Tasks.IndexView(tasks: @tasks)
    $("#tasks").html(@view.render().el)

  show: (id) ->
    task = @tasks.get(id)

    @view = new Teamr.Views.Tasks.ShowView(model: task)
    $("#tasks").html(@view.render().el)

  edit: (id) ->
    task = @tasks.get(id)

    @view = new Teamr.Views.Tasks.EditView(model: task)
    $("#tasks").html(@view.render().el)
