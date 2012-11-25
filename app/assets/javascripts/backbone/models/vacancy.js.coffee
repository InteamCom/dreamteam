class Teamr.Models.Vacancy extends Backbone.Model
  defaults:
    content: null
    title: null
    open: null

class Teamr.Collections.VacanciesCollection extends Backbone.Collection
  initialize: (options) ->
    @options = options

  model: Teamr.Models.Vacancy
  url: -> @options.project_id + '/vacancies'
