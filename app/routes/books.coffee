`import Ember from 'ember'`

BooksRoute = Ember.Route.extend(

	# --- Initialisation of Ember-data model (i.e. Extract-Transform-Load operations) ---
	# Handel a regular Ember-data model & replicate this model into an
	# array-list. Resulting array-list to be used for rendering jQuery-DataTables.
	setupController: (controller, model) ->

		@store.find('book').then( (response) ->

			# Load the extracted book/s into the local-model
			controller.set('model', response)

			# Transform-&-Load the above extracted model into an array-list
			controller.set('modelAsList', response.getEach('data'))

		)
)

`export default BooksRoute`
