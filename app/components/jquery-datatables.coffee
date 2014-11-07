`import Ember from 'ember'`

JqueryDatatablesComponent = Ember.Component.extend(

	tagName: 'div'
		
	classNames: ['ember-dataTables-container']
	
	didInsertElement: ->
	
		theController = @get('_parentView.controller')

		@$('.table').dataTable({
			'deferRender': true,
			'bProcessing': true,
			'aaData': @get('value'),
			'aoColumns': @get('columns')
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
		
		# --- Inline event listeners ---
		context = @
		
		# 'Delete' button action
		@$('.table tbody').on('click', 'td .delete-control', ->
			context._extractRowContent(@, (row) ->
				theController.send('delete', row.id)
			)
		)
		
		# 'Edit' button action
		@$('.table tbody').on('click', 'td .edit-control', ->
			context._extractRowContent(@, (row) ->
				theController.send('edit', row.id)
			)
		)

		# 'Info' button action
		@$('.table tbody').on('click', 'td .info-control', ->
			context._extractRowContent(@, (row) ->
				theController.send('info', row.id)
			)
		)
	
	_extractRowContent: (target, action) ->
		tr = $(target).parents('tr')
		table = @$('.table').DataTable()
		rowContent = table.row(tr).data()
		action(rowContent)
		
	_onContentChanged: ( ->
		@rerender()
	).observes('value.@each')
	
)

`export default JqueryDatatablesComponent`
