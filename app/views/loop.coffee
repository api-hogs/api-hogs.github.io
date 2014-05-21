loopView = Ember.View.extend
  classNames: ['plax']

  runLoop:(->
    @animate('.plax1', 13000)
    @animate('.plax2', 10000)
    @animate('.plax3', 8000)
    @animate('.plax4', 6000)
    return
  ).on('didInsertElement')

  queue: []

  queueObserver: (->
    item = @get('queue').pop()
    @animate(item.selector, item.speed)
    return
  ).observes('queue.length')

  animate: (selector, speed) ->
    item = $(selector)
    item.css({right:0})
    item.animate({
      top: '-1000',
    }, speed, 'linear', => @get('queue').addObject({selector: selector, speed: speed}); return)
    item.css({top: '0'})
    return
`export default loopView`