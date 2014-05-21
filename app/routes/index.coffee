index =  Ember.Route.extend
  model: ->
    @store.find('project')

  setupController: (controller, model) ->
    controller.set('model', model)
    Ember.View.views['projectWrap'].clear() if Ember.View.views['projectWrap']

  actions:
    animate: (selector, speed, view) ->
      view.send('animate', selector, speed)

`export default index`
