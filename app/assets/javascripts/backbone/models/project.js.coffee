class Teamr.Models.Project extends Backbone.Model
  defaults:
    name: null
    permalink: null
    description: null

class Teamr.Collections.ProjectsCollection extends Backbone.Collection
  model: Teamr.Models.Project
  url: -> '/catalog/projects'
