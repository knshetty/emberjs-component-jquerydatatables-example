# An Example App: Emberjs-jquery-datatables Component

This project wraps [jQuery-DataTables](http://www.datatables.net/) as an [ember-component](http://emberjs.com/api/classes/Ember.Component.html) within an [ember-cli](http://www.ember-cli.com/) project template. In doing so, this project acts as a demo application which uses this ember-component to render interactable datatable. Here, the interactions refers to [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) operations on the rendered dataset. Click on the link to access the online [demo app](http://knshetty.github.io/emberjs-component-jquerydatatables-example/).

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM) and [Bower](http://bower.io/)

##  Version Used In Development Environment

 - ember-cli version: 0.1.2
 - node: 0.10.32
 - npm: 2.1.3

## Installation

* `git clone https://github.com/knshetty/emberjs-component-jquerydatatables-example.git`
* `cd emberjs-component-jquerydatatables-example`
* `npm install`
* `bower install`

## Running / Development

* `ember server`
*  Visit the running app at http://0.0.0.0:4200/emberjs-component-jquerydatatables-example.

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

* `ember test`
* `ember test --server`

Note! As of now, there are no unit tests written for this project.

### Building

* `ember build` (development)
* `ember build --environment production` (production)

## How To Bootstrapped This Ember-cli Project From Scratch
###Step1: Setup ember-cli project
	A. Create an ember-cli project
		$ ember new emberjs-component-jquerydatatables-example
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
		i. "Bootstrap3" UI framework's dependencies
		ii. "Jquery.dataTables" dependencies
		iii. "Datatables-Bootstrap3" dependencies

	E. Setup content security policy
		Enable content security policy in-order to download external resources, such as images. Configuration is carried out in 'config/environment.js' by setting the below property:

			var ENV = {
				...
				contentSecurityPolicy: {'img-src': "'self' s.it-ebooks-api.info"},
				...
			}

	F. Conduct a basic smoke test
		$ ember server
		Visit the running app at http://0.0.0.0:4200/emberjs-component-jquerydatatables-example

###Step2: Enable CoffeeScript (instead of JavaScript):
	Install ember-cli CoffeeScript code generator
		$ npm install ember-cli-coffeescript --save-dev

## Useful Links

* [Emberjs](http://emberjs.com/)
* [ember-cli](http://www.ember-cli.com/)
* Development Browser Extensions:
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
* [Writing Ember.js Components with Ember CLI (Video Tutorial)](http://www.youtube.com/watch?v=WVZXywVpP34&list=UUyoy-08PTHANh_7bcW0GpaA)
* [Ember-cli-coffeescript addon](https://github.com/kimroen/ember-cli-coffeescript)
* [Setting Up Ember CLI with Emblem and CoffeeScript](http://blogs.visoftinc.com/2014/07/24/setting-up-ember-cli-with-emblem-and-coffeescript/)
* [Violating Content Security Policy directive in Ember-cli](http://stackoverflow.com/questions/26192316/violating-content-security-policy-directive-after-ember-cli-0-0-47-upgrade)
* Sources of inspiration for this project:
  * https://github.com/twar59/ember-jquery-datatables
  * http://datatables.net/forums/discussion/19819/datatables-ember-data
  * http://www.datatables.net/plug-ins/pagination/
  * http://www.datatables.net/extensions/index
  * http://it-ebooks-api.info/
