projectWrapView = Ember.View.extend
  elementId: 'projectWrap'
  classNames: ['project_wrap']

  didInsertElement: ->
    @clear()

  initCommitsFlow: ->
    project_wrapH = $('.project_wrap').height()
    commitsH = (@get('controller.selectedProject.commits.length') || 1)*130 + 3 * $(window).height()
    $('.project_wrap').animate({height: commitsH}, (commitsH - project_wrapH) * 5)
    $('.loader_wrap .bar').animate({width: 700}, (commitsH - project_wrapH - 2 * $(window).height()) * 5)

  projectObserver:(->
    @clear()
  ).observes('controller.selectedProject', 'controller.selectedProject.commits.@each')

  clear: ->
    @$().css({'height': '0px'});
    @$().stop().css({'height': '0px'});
    $('.loader_wrap .bar').stop()
    $('.loader_wrap .bar').css({'width': '0px'});
    @initCommitsFlow()

`export default projectWrapView`