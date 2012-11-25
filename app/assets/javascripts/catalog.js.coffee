$ ->
  window.membersRouter = new Teamr.Routers.MembersRouter({ members: [] })
  window.projectsRouter = new Teamr.Routers.ProjectsRouter({ projects: [] })

$ ->
  $("a.new_project").click ->
    hideAllDivs2()
    $("div#projects").show()
    window.projectsRouter.newProject()

  $("a.projects").click ->
    hideAllDivs2()
    $("div#projects").show()
    window.projectsRouter.projects.fetch({ success: -> window.projectsRouter.index() })
  
  $("a.members").click ->
    hideAllDivs2()
    $("div#members").show()
    window.membersRouter.members.fetch({ success: -> window.membersRouter.index() })

hideAllDivs2 = ->
  $("div#projects").hide()
  $("div#members").hide()
  $("div#welcome").hide()