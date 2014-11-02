`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
	@resource("books", ->
        @route('new')
        @resource('book', { path: ':book_id' }, ->
            @route('info', { path: '/' })
            @route('edit', { path: '/edit' })
        )
    )

`export default Router`
