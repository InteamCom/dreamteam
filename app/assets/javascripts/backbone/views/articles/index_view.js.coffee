Teamr.Views.Articles ||= {}

class Teamr.Views.Articles.IndexView extends Backbone.View
  template: JST["backbone/templates/articles/index"]

  initialize: () ->
    @options.articles.bind('reset', @addAll)

  addAll: () =>
    @options.articles.each(@addOne)

  addOne: (article) =>
    view = new Teamr.Views.Articles.ArticleView({model : article})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(articles: @options.articles.toJSON() ))
    @addAll()

    return this
