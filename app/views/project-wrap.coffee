projectWrapView = Ember.View.extend
  elementId: 'projectWrap'
  classNames: ['project_wrap']

  didInsertElement: ->
    @clear()

  initCommitsFlow: ->
    project_wrapH = $('.project_wrap').height()
    commitsH = (@get('controller.selectedProject.commits.length') || 1)*130 + 3 * $(window).height()
    $('.project_wrap').animate({height: commitsH, specialEasing: true}, (commitsH - project_wrapH) * 3)

    $('.loader_wrap .bar').animate({width: 700}, (commitsH - project_wrapH - 2 * $(window).height()) * 3, ->
      #animation end
      $(".loader_wrap").fadeOut 200
      $(".plax").fadeOut 400
      $(".project_descr").delay(400).fadeIn 300
      return
    )

  projectObserver:(->
    @clear()
  ).observes('controller.selectedProject', 'controller.selectedProject.commits.@each')

  clear: ->
    $('.loader_wrap').fadeIn(200);
    $('.plax').fadeIn(400);
    $('.project_descr').fadeOut(300);
    @$().css({'height': '0px'});
    @$().stop().css({'height': '0px'});
    $('.loader_wrap .bar').stop()
    $('.loader_wrap .bar').css({'width': '0px'});
    @initCommitsFlow()

`export default projectWrapView`