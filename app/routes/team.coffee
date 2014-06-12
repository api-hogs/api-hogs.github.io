team = Ember.Route.extend
  model: ->
    @store.find('user')

`export default team;`