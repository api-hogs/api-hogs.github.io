user = DS.Model.extend
  avatar_url: DS.attr('string')
  first_name: DS.attr('string')
  last_name:  DS.attr('string')
  github:     DS.attr('string')
  login:      DS.attr('string')
`export default user;`