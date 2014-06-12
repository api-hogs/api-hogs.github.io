projectCommitView = Ember.View.extend
  classNames: ['commit']
  classNameBindings: ['indexClass']

  templateName: 'project/commit'

  indexClass:(->
    index = (@get('controller.selectedProject.commits') || []).indexOf(@get('context')) % 6 + 1
    "p%@".fmt(index)
  ).property('controller.selectedProject.commits.@each', 'context')

  mouseEnter: ->
    $('.project_wrap').stop(true, false)
    $('.loader_wrap .bar').stop(true, false)

  mouseLeave: ->
    Ember.View.views['projectWrap'].initCommitsFlow()

`export default projectCommitView`