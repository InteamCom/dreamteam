Teamr.Views.Vacancies ||= {}

class Teamr.Views.Vacancies.IndexView extends Backbone.View
  template: JST["backbone/templates/vacancies/index"]

  initialize: () ->
    @options.vacancies.bind('reset', @addAll)

  addAll: () =>
    @options.vacancies.each(@addOne)

  addOne: (vacancy) =>
    view = new Teamr.Views.Vacancies.VacancyView({model : vacancy})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(vacancies: @options.vacancies.toJSON() ))
    @addAll()

    return this
