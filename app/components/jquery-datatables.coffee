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
		}).each( ->
			 dataTables = $(@)
			 
			 # --- Search Input Field: Customisation ---
			 # Input: Superimpose Bootstrap3 component configuration & Add placeholder
			 search_input = dataTables.closest('.dataTables_wrapper').find('div[id$=_filter] input')
			 search_input.addClass('form-control input-sm')
			 search_input.attr('placeholder', 'Search')
			 
			 # Label Text: Clear search label text
			 search_label = dataTables.closest('.dataTables_wrapper').find('div[id$=_filter] label')
			 search_label.replaceWith(search_input)
			 
			 # --- DataTables-Size Selector Customisation ---
			 # Selection Box: Superimpose Bootstrap3 component configuration
			 dataTablesSize_select = dataTables.closest('.dataTables_wrapper').find('div[id$=_length] select')
			 dataTablesSize_select.addClass('form-control input-sm')
			 
			 # Label Text: Clear all the label text concerning dataTables-size
			 dataTablesSize_label = dataTables.closest('.dataTables_wrapper').find('div[id$=_length] label')
			 dataTablesSize_label.replaceWith(dataTablesSize_select)
		)
		
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
