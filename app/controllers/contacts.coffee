contacts = Ember.Controller.extend
  actions:
    send: ->
      return unless @get('email')
      return unless @get('name')
      return unless @get('message')
      $.post '/api/v1/contacts', {email: @get('email'), message: @get('message'), name: @get('message')}, =>
        @set('email', '')
        @set('name', '')
        @set('text', '')
        @transactionTo('index')
      , 'json'

`export default contacts;`