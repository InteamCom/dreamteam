class Teamr.Routers.ProjectsRouter extends Backbone.Router
  initialize: (options) ->
    @projects = new Teamr.Collections.ProjectsCollection(options)
    @projects.reset options.projects

  routes:
    "projects/new"      : "newProject"
    "projects/index"    : "index"
    "projects/:id"      : "show"
    "projects/.*"       : "index"

  newProject: ->
    @view = new Teamr.Views.Projects.NewView(collection: @projects)
    $("#projects").html(@view.render().el)

  index: ->
    @view = new Teamr.Views.Projects.IndexView(projects: @projects)
    $("#projects").html(@view.render().el)

  show: (id) ->
    project = @projects.get(id)

    @view = new Teamr.Views.Projects.ShowView(model: project)
    $("#projects").html(@view.render().el)
