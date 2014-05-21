projectMenuView = Ember.View.extend
  templateName: 'project/menu_item'

  isActive: (->
    @get('controller.selectedProject.id') == @get('context.id')
  ).property('context', 'controller.selectedProject')

`export default projectMenuView`