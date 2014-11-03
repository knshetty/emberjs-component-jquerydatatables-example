`import DS from 'ember-data'`

Book = DS.Model.extend {
	title: DS.attr()
	author: DS.attr()
	image: DS.attr()
}

Book.reopenClass(
	FIXTURES: [ {id: 1, title: 'Building Web Apps with Ember.js, 2014', author: 'Jesse Cravens, Thomas Brady', image: 'http://s.it-ebooks-api.info/3/building_web_apps_with_ember.js.jpg'},
				{id: 2, title: 'Ember.js Application Development How-to, 2013', author: 'Marc Bodmer', image: 'http://s.it-ebooks-api.info/14/ember.js_application_development_how-to.jpg'},
				{id: 3, title: 'CoffeeScript in Action, 2014', author: 'Patrick Lee', image: 'http://s.it-ebooks-api.info/5/coffeescript_in_action.jpg'},
				{id: 4, title: 'Programming JavaScript Applications, 2014', author: 'Eric Elliott', image: 'http://s.it-ebooks-api.info/3/programming_javascript_applications.jpg'},
				{id: 5, title: 'Async JavaScript, 2012', author: 'Trevor Burnham', image: 'http://s.it-ebooks-api.info/1/async_javascript.jpg'},
				{id: 6, title: 'Learning JavaScript Design Patterns, 2012', author: 'Addy Osmani', image: 'http://s.it-ebooks-api.info/3/learning_javascript_design_patterns.jpg'},
				{id: 7, title: 'Programming in CoffeeScript, 2012', author: 'Mark Bates', image: 'http://s.it-ebooks-api.info/10/programming_in_coffeescript.jpg'},
				{id: 8, title: 'HTML5 and CSS3 Responsive Web Design Cookbook, 2013', author: 'Benjamin LaGrone', image: 'http://s.it-ebooks-api.info/14/html5_and_css3_responsive_web_design_cookbook.jpg'}]
				
				###
				{id: 9, title: 'HTML5 Hacks, 2012', author: 'Jesse Cravens, Jeff Burtoft', image: 'http://s.it-ebooks-api.info/3/html5_hacks.jpg'},
				{id: 10, title: 'Pro HTML5 and CSS3 Design Patterns, 2011', author: 'Michael Bowers, Dionysios Synodinos, Victor Sumner', image: 'http://s.it-ebooks-api.info/6/pro_html5_and_css3_design_patterns.jpg'},
				{id: 11, title: 'RESTful Web APIs, 2013', author: 'Leonard Richardson, Mike Amundsen, Sam Ruby', image: 'http://s.it-ebooks-api.info/3/restful_web_apis.jpg'},
				{id: 12, title: 'RESTful Web Services Cookbook, 2010', author: 'Subbu Allamaraju', image: 'http://s.it-ebooks-api.info/3/restful_web_services_cookbook.jpg'},
				{id: 13, title: 'Learning Node.js, 2013', author: 'Marc Wandschneider', image: 'http://s.it-ebooks-api.info/10/learning_node.js.jpg'}]
				###
)

`export default Book`
