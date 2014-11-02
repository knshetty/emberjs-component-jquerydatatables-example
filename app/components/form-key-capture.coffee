`import Ember from 'ember'`

FormKeyCaptureComponent = Ember.Component.extend(
	tagName: 'div'
		
	didInsertElement: ->
		KEYCODE_ENTER = 13
		KEYCODE_ESC = 27
		
		# Keyboard events listener
		@$('input').on('keydown', ((e) ->
			if typeof e.which == 'number'
				charCode = e.which
			else
				charCode = e.keyCode
			
			if charCode == KEYCODE_ENTER
				@send('submit')
			
			if charCode == KEYCODE_ESC
				@send('cancel')
			
		).bind(@))
		
		@$('input:visible:first').focus()
	
	actions:
		cancel: ->
			@sendAction('cancel')
			
		submit: ->
			@sendAction('submit')
)

`export default FormKeyCaptureComponent`
