contacts = Ember.Controller.extend
  actions:
    send: ->
      return unless @get('email')
      return unless @get('name')
      return unless @get('message')
      $.post 'http://api.api-hogs.io/api/v1/contacts', {email: @get('email'), message: @get('message'), name: @get('name')}, =>
        @set('email', '')
        @set('name', '')
        @set('text', '')
        @transitionTo('index')
      , 'json'

`export default contacts;`
