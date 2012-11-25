class Teamr.Models.Activity extends Backbone.Model
  defaults:
    content: null
    date: null

class Teamr.Collections.ActivitiesCollection extends Backbone.Collection
  initialize: (options) ->
    @options = options

  model: Teamr.Models.Activity
  url: -> @options.project_id + '/activities'
