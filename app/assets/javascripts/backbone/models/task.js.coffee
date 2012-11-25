class Teamr.Models.Task extends Backbone.Model
  defaults:
    content: null
    name: null

class Teamr.Collections.TasksCollection extends Backbone.Collection
  initialize: (options) ->
    @options = options

  model: Teamr.Models.Task
  url: -> @options.project_id + '/tasks'
