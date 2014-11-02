`import Ember from 'ember'`

BootstrapModalFormComponent = Ember.Component.extend(
	tagName: 'div'
	
	classNames: ['modal-form', 'modal', 'fade']

	attributeBindings: ['tabindex', 'role', 'aria-labelledby', 'aria-hidden']

	tabindex: '-1'

	role: 'dialog'

	'aria-labelledby': 'modal_SubmitCancelFormType_Label'

	'aria-hidden': 'true'

	didInsertElement: ->
		self = @

		@$().on('hide.bs.modal', ->
			self.send('cancel'))
		
		@$().on('shown.bs.modal', ->
			self.$('input:visible:first').focus())
			
		@$().modal('show')

	willDestroyElement: ->
		@$().modal('hide')

	actions:
		cancel: ->
			@sendAction('cancel')
			
		submit: ->
			@sendAction('submit')
)

`export default BootstrapModalFormComponent`
