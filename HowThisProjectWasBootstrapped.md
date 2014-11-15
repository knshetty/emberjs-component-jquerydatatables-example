--------------------------------------------------------
How this Ember-cli project was bootstrapped from scratch
--------------------------------------------------------
Version/toolchain in use:
	- ember-cli version: 0.1.2
	- node: 0.10.32
	- npm: 2.1.3

Step1: Setup ember-cli project
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
		i. "Bootstrap3" UI framework's dependencies
		ii. "Jquery.dataTables" dependencies
		iii. "Datatables-Bootstrap3" dependencies

	E. Setup content security policy
		Enable content security policy in-order to download external resources, such as images. Configuration is carried out in 'config/environment.js' by setting the below property:

			var ENV = {
				...
				contentSecurityPolicy: {
					'img-src': "'self' s.it-ebooks-api.info"
				},
				...
			}

	F. Conduct a basic smoke test
		$ ember server
		Visit the running app at http://0.0.0.0:4200/emberjs-component-jquerydatatables-example

Step2: Enable CoffeeScript (instead of JavaScript):
	Install ember-cli CoffeeScript code generator
		$ npm install ember-cli-coffeescript --save-dev

References:
	- Offical Ember-cli online documentation
	  http://www.ember-cli.com/#getting-started

	- Writing Ember.js Components with Ember CLI
	  http://www.youtube.com/watch?v=WVZXywVpP34&list=UUyoy-08PTHANh_7bcW0GpaA

	- Ember-cli-coffeescript addon
	  https://github.com/kimroen/ember-cli-coffeescript

	- Setting Up Ember CLI with Emblem and CoffeeScript
	  http://blogs.visoftinc.com/2014/07/24/setting-up-ember-cli-with-emblem-and-coffeescript/

	- Violating Content Security Policy directive in Ember-cli
	  http://stackoverflow.com/questions/26192316/violating-content-security-policy-directive-after-ember-cli-0-0-47-upgrade
