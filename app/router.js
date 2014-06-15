var Router = Ember.Router.extend(); // ensure we don't share routes between all Router instances

Router.map(function() {
  this.route('index', {path: '/'});
  this.route('team');
//  this.route('news');
  this.route('contacts');
  this.route('technologies');
  this.route("404", { path: "*path"});
});

export default Router;