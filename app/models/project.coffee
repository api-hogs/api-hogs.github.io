project = DS.Model.extend
  name:          DS.attr 'string'
  is_complete:   DS.attr 'boolean'
  description:   DS.attr 'string'
  total_commits: DS.attr 'number'

`export default project`