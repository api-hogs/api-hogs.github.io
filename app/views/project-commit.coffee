projectCommitView = Ember.View.extend
  classNames: ['commit']
  classNameBindings: ['indexClass']

  templateName: 'project/commit'

  indexClass:(->
    index = (@get('controller.selectedProject.commits') || []).indexOf(@get('context')) % 6 + 1
    "p%@".fmt(index)
  ).property('controller.selectedProject.commits.@each', 'context')

  mouseEnter: ->
    $('.project_wrap').stop()
    $('.loader_wrap .bar').stop(true, false)

  mouseLeave: ->
    project_wrapH = $('.project_wrap').height()
    commitsH = $('.commits').height() + $(window).height() + 50
    Ember.View.views['projectWrap'].initCommitsFlow()
    $('.loader_wrap .bar').animate({width: 700}, (commitsH - project_wrapH) * 5)

`export default projectCommitView`