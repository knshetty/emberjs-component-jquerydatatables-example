`import Ember from 'ember'`

BookEditRoute = Ember.Route.extend(
	controllerName: 'books'
		
	setupController: (controller, model) ->
		controller.set('book', model)

	renderTemplate: ->
		@render('book.edit-form')

	deactivate: ->
		# On 'Cancel' action, do rollback
		@currentModel.rollback()
)

`export default BookEditRoute`
