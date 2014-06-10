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
      @set('selectedProject.daysSinceCreated', Math.floor((Date.parse(new Date()) - Date.parse(new Date(commits.get('firstObject.standard_date')))) / 86400000))
      @set('selectedProject.commitsCount', commits.toArray().length)
  ).observes('selectedProject').on('init')

`export default indexController`