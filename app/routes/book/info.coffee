`import Ember from 'ember'`

BookInfoRoute = Ember.Route.extend(
	controllerName: 'books'
		
	setupController: (controller, model) ->
		controller.set('book', model))

`export default BookInfoRoute`
