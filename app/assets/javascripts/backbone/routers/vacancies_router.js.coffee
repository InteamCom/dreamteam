class Teamr.Routers.VacanciesRouter extends Backbone.Router
  initialize: (options) ->
    @vacancies = new Teamr.Collections.VacanciesCollection(options)
    @vacancies.reset options.vacancies

  routes:
    "vacancies/new"      : "newVacancy"
    "vacancies/index"    : "index"
    "vacancies/:id/edit" : "edit"
    "vacancies/:id"      : "show"
    "vacancies/.*"       : "index"

  newVacancy: ->
    @view = new Teamr.Views.Vacancies.NewView(collection: @vacancies)
    $("#vacancies").html(@view.render().el)

  index: ->
    @view = new Teamr.Views.Vacancies.IndexView(vacancies: @vacancies)
    $("#vacancies").html(@view.render().el)

  show: (id) ->
    vacancy = @vacancies.get(id)

    @view = new Teamr.Views.Vacancies.ShowView(model: vacancy)
    $("#vacancies").html(@view.render().el)

  edit: (id) ->
    vacancy = @vacancies.get(id)

    @view = new Teamr.Views.Vacancies.EditView(model: vacancy)
    $("#vacancies").html(@view.render().el)
