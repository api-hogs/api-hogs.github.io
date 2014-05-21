indexController  = Ember.ArrayController.extend
  selectedProject: Ember.computed.alias('content.firstObject')

  actions:
    selectProject: (project) ->
      @set('selectedProject', project)
      return

  observeCommits: (->
    return unless @get('selectedProject')
    return if @get('selectedProject.commits')
    @store.find('commit', {project_id: @get('selectedProject.id')}).then (commits) =>
      @set('selectedProject.commits', commits.toArray())
  ).observes('selectedProject').on('init')

`export default indexController`