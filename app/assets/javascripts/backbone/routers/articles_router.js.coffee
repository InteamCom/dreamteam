class Teamr.Routers.ArticlesRouter extends Backbone.Router
  initialize: (options) ->
    @articles = new Teamr.Collections.ArticlesCollection(options)
    @articles.reset options.articles

  routes:
    "articles/new"      : "newArticle"
    "articles/index"    : "index"
    "articles/:id/edit" : "edit"
    "articles/:id"      : "show"
    "articles/.*"       : "index"

  newArticle: ->
    @view = new Teamr.Views.Articles.NewView(collection: @articles)
    $("#articles").html(@view.render().el)

  index: ->
    @view = new Teamr.Views.Articles.IndexView(articles: @articles)
    $("#articles").html(@view.render().el)

  show: (id) ->
    article = @articles.get(id)

    @view = new Teamr.Views.Articles.ShowView(model: article)
    $("#articles").html(@view.render().el)

  edit: (id) ->
    article = @articles.get(id)

    @view = new Teamr.Views.Articles.EditView(model: article)
    $("#articles").html(@view.render().el)
