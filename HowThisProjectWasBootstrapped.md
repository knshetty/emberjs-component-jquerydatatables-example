-------------------------------------------
How this Ember-cli project was bootstrapped
-------------------------------------------
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
	
Step2: Enable CoffeeScript (instead of JavaScript):
	Install CoffeeScript compatible 'ember generate command'
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
