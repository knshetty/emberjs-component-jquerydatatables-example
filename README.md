# emberjs-jquery-datatables component

This project wraps the [jQuery-Datatables](http://www.datatables.net/) as an [Ember-component](http://emberjs.com/api/classes/Ember.Component.html) in an [ember-cli](http://www.ember-cli.com/) project template. In doing so, this project acts as a demo application which uses this Emberjs component to render interactable datatable. Here, the interactions refers to [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) operations on the rendered dataset.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM) and [Bower](http://bower.io/)

##  Version/toolchain used during implementation

 - ember-cli version: 0.1.2
 - node: 0.10.32
 - npm: 2.1.3

## Installation

* `git clone <repository-url>` this repository
* change into the new directory
* `npm install`
* `bower install`

## Running / Development

* `ember server`
* Visit your app at http://localhost:4200.

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

* `ember test`
* `ember test --server`

Note! As of now, there are no unit tests written in this project!

### Building

* `ember build` (development)
* `ember build --environment production` (production)

### How this Ember-cli project was bootstrapped from scratch
####Step1: Setup ember-cli project
	A. Create an ember-cli project
		$ ember new ember-jquery-datatables
		$ cd ember-jquery-datatables/
		$ npm install && bower install

	B. Manage your dependcies
		$ bower install bootstrap --save
		$ bower install datatables --save
		$ bower install datatables-bootstrap3 --save

	C. Install build toolchain
		$ npm install --save-dev broccoli-merge-trees
		$ npm install --save-dev broccoli-static-compiler
		$ ember build
		
	D. Setup project-build environment
		Configure 'Brocfile.js' for the build, which includes the following depedencies:
		i. Bootstrap UI framework's dependencies
		ii. Jquery.dataTables dependencies
		iii. Datatables-Bootstrap3 dependencies
	
	E. Content Security Policy for download external resources
		Enable content security policy in-order to download external resources, such as images. Respective configure file is 'config/environment.js' and the configuration property is as follows:
		
			var ENV = {
				...
				contentSecurityPolicy: {
					'img-src': "'self' s.it-ebooks-api.info"
				},
				...
			}

	F. Conduct a basic smoke test
		$ ember server
		Now, the URL of this app is => localhost:4200/
	
####Step2: Enable CoffeeScript (instead of JavaScript):
	Install CoffeeScript compatible 'ember generate command'
		$ npm install ember-cli-coffeescript --save-dev

## Useful Links

* [Embejsr](http://emberjs.com/)
* [ember-cli](http://www.ember-cli.com/)
* Development Browser Extensions:
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
* [Writing Ember.js Components with Ember CLI](http://www.youtube.com/watch?v=WVZXywVpP34&list=UUyoy-08PTHANh_7bcW0GpaA)
* [Ember-cli-coffeescript addon](https://github.com/kimroen/ember-cli-coffeescript)
* [Setting Up Ember CLI with Emblem and CoffeeScript](http://blogs.visoftinc.com/2014/07/24/setting-up-ember-cli-with-emblem-and-coffeescript/)
* [Violating Content Security Policy directive in Ember-cli](http://stackoverflow.com/questions/26192316/violating-content-security-policy-directive-after-ember-cli-0-0-47-upgrade)
* Sources of inspiration for this project:
  * https://github.com/twar59/ember-jquery-datatables
  * http://datatables.net/forums/discussion/19819/datatables-ember-data
  * http://www.datatables.net/plug-ins/pagination/
  * http://www.datatables.net/extensions/index
  * http://it-ebooks-api.info/
