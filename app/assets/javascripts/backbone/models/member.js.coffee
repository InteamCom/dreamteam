class Teamr.Models.Member extends Backbone.Model
  defaults:
    email: null
    name: null

class Teamr.Collections.MembersCollection extends Backbone.Collection
  initialize: (options) ->
    @options = options

  model: Teamr.Models.Member
  url: -> 
    pid = @options.project_id
    if (pid)
      @options.project_id + '/members'
    else
      "/catalog/members"