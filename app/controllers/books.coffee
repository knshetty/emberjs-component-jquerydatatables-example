`import Ember from 'ember'`

BooksController = Ember.Controller.extend(

	modelAsList: null

	book: null

	dataTables_Columns: [
    {'sTitle': 'Title', 'mData': 'title'},
		{'sTitle': 'Author', 'mData': 'author'},
		{'orderable': false, 'class': 'actions', 'data': '', 'mRender': ->
      '<div class="btn-group btn-group-xs">' +
        '<a class="btn btn-sm btn-primary edit-control">Edit</a>' +
        '<a class="btn btn-sm btn-default info-control">Info</a>' +
        '<a class="btn btn-sm btn-danger delete-control">Delete</a>' +
      '</div>'}]

	actions:

		create: ->
			if (@title == '' || @author == '' ||
          @title == undefined || @author == undefined)
				msg = "Title/Author can't be empty, please provide " +
              "these details for the new ebook."
				window.alert(msg)

			else
				context = @
				newBook = @store.createRecord('book',
                    {'title': @title, 'author': @author, 'image': @image})

				newBook.save().then( ((response) ->

						console.log 'BooksNewController: Saved new entry successfully'

						# --- Add a new item to the BookList ---
						bookList = context.get('modelAsList')
						bookList.pushObject(response.get('data'))

						context.transitionToRoute('books')

					).bind(@), (error) ->
						  console.log error
				)

		update: ->
			if (@get('book.title') == '' || @get('book.author') == '' ||
          @get('book.title') == undefined || @get('book.author') == undefined)
				msg = "Title/Author can't be empty, please provide " +
              "these details for the ebook being edited."
				window.alert(msg)

			else
				context = @
				@get('book').save().then( ((response) ->

						console.log 'BooksController: Updated successfully'

						# --- Update an item within the BookList ---
						bookList = context.get('modelAsList')
						editedBook = response.get('data')
						item = bookList.findBy('id', editedBook.id)
						bookList.replace(bookList.indexOf(item), 1, editedBook)

						context.transitionToRoute('books')

					).bind(@), (error) ->
						  console.log error
				)

		delete: (bookId)->
			bookToDelete = @get('model').findBy('data.id', bookId)
			msg = 'Book: '+ bookToDelete.get('title') + ' will be ' +
            'deleted. Please confirm this deletion?'

			if window.confirm(msg)
				context = @
				bookToDelete.destroyRecord().then( ((response) ->

						console.log 'BooksController: Deleted successfully'
						context.get('modelAsList').removeObject(response.get('data'))

					).bind(@), (error) ->
						  console.log error
				)

		cancel: ->
      @transitionToRoute('books')

		edit: (bookId)->
			@transitionToRoute('book.edit', bookId)

		info: (bookId)->
			@transitionToRoute('book.info', bookId)
)

`export default BooksController`
