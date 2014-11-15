`import Ember from 'ember'`

BootstrapModalInfoComponent = Ember.Component.extend(

	tagName: 'div'

	classNames: ['modal-form', 'modal', 'fade']

	attributeBindings: ['tabindex', 'role', 'aria-labelledby', 'aria-hidden']

	tabindex: '-1'

	role: 'dialog'

	'aria-labelledby': 'modal_OkInfoType_Label'

	'aria-hidden': 'true'

	didInsertElement: ->

		self = @

		@$().on('hide.bs.modal', ->
			self.sendAction('cancel'))

		@$().modal('show')

	willDestroyElement: ->
		@$().modal('hide')

	actions:

		cancel: ->
			@sendAction('cancel')
)

`export default BootstrapModalInfoComponent`
