commit = DS.Model.extend
  message:       DS.attr 'string'
  date:          DS.attr 'string'
  author_avatar: DS.attr 'string'
  standard_date: DS.attr 'string'

  dateArray: (->
    @get('date').split(".")
  ).property('date')

  year:(->
    @get('dateArray')[2]
  ).property('dateArray')

  month:(->
    @get('dateArray')[1]
  ).property('dateArray')

  day:(->
    @get('dateArray')[0]
  ).property('dateArray')

`export default commit`