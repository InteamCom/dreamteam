$ ->
  project_id = window.projectId;
  window.articlesRouter = new Teamr.Routers.ArticlesRouter({ articles: [], project_id: project_id })
  window.tasksRouter = new Teamr.Routers.TasksRouter({ tasks: [], project_id: project_id })
  window.activitiesRouter = new Teamr.Routers.ActivitiesRouter({ activities: [], project_id: project_id })
  window.membersRouter = new Teamr.Routers.MembersRouter({ members: [], project_id: project_id })
  window.vacanciesRouter = new Teamr.Routers.VacanciesRouter({ vacancies: [], project_id: project_id })
  window.projectsRouter = new Teamr.Routers.ProjectsRouter({ projects: [] })

$ ->
  $("a.articles").click ->
    hideAllDivs()
    $("div#articles").show()
    window.articlesRouter.articles.fetch({ success: -> window.articlesRouter.index() })
  
  $("a.tasks").click ->
    hideAllDivs()
    $("div#tasks").show()
    window.tasksRouter.tasks.fetch({ success: -> window.tasksRouter.index() })

  $("a.activities").click ->
    hideAllDivs()
    $("div#activities").show()
    window.activitiesRouter.activities.fetch({ success: -> window.activitiesRouter.index() })

  $("a.members").click ->
    hideAllDivs()
    $("div#members").show()
    window.membersRouter.members.fetch({ success: -> window.membersRouter.index() })

  $("a.vacancies").click ->
    hideAllDivs()
    $("div#vacancies").show()
    window.vacanciesRouter.vacancies.fetch({ success: -> window.vacanciesRouter.index() })

hideAllDivs = ->
  $("div#tasks").hide()
  $("div#activities").hide()
  $("div#articles").hide()
  $("div#members").hide()
  $("div#vacancies").hide()
  $("div#welcome").hide()