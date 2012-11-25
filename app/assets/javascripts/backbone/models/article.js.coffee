class Teamr.Models.Article extends Backbone.Model
  defaults:
    title: null
    content: null

class Teamr.Collections.ArticlesCollection extends Backbone.Collection
  initialize: (options) ->
    @options = options

  model: Teamr.Models.Article
  url: -> @options.project_id + '/articles'
