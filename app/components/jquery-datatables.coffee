`import Ember from 'ember'`

JqueryDatatablesComponent = Ember.Component.extend(
	tagName: 'div'
		
	classNames: ['ember-dataTables-container']
	
	didInsertElement: ->
		theController = @get('value')

		@$('.table').dataTable({
			'deferRender': true,
			'bProcessing': true,
			'aaData': theController.get('modelAsList'),
			'aoColumns': theController.get('datatableColumns')
		})
		
		self = @
		
		# Event listener for 'Delete' button action
		@$('.table tbody').on('click', 'td .delete-control', ->
			self._actionOnRow(@, (row) ->
					theController.send('delete', row)
			)
		)
		
		# Event listener for 'Edit' button action
		@$('.table tbody').on('click', 'td .edit-control', ->
			self._actionOnRow(@, (row) ->
				theController.send('edit', row)
			)
		)

		# Event listener for 'Info' button action
		@$('.table tbody').on('click', 'td .info-control', ->
			self._actionOnRow(@, (row) ->
				theController.send('info', row)
			)
		)
	
	_actionOnRow: (target, action) ->
		table = @$('.table').DataTable()
		tr = $(target).parents('tr')
		rowContent = table.row(tr).data()
		row = @get('value').findBy('id', rowContent.id)
		action(row)
		
	_onContentChanged: ( ->
		@rerender()
	).observes('value.modelAsList.@each')
)

`export default JqueryDatatablesComponent`
