`import Ember from 'ember'`

BooksNewRoute = Ember.Route.extend(
	controllerName: 'books'
		
	renderTemplate: ->
		@render('books.add-form')
)

`export default BooksNewRoute`
