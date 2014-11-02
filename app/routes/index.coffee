`import Ember from 'ember'`

IndexRoute = Ember.Route.extend(
	redirect: ->
		@transitionTo('books')
)

`export default IndexRoute`
