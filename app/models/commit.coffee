commit = DS.Model.extend
  title:       DS.attr 'string'
  date:        DS.attr 'string'
  user_avatar: DS.attr 'string'

  year:(->
    @get('date').split(".")[2]
  ).property('date')

  month:(->
    @get('date').split(".")[1]
  ).property('date')

  day:(->
    @get('date').split(".")[0]
  ).property('date')

`export default commit`