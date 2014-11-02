/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

// Use `app.import` to add additional libraries to the generated
// output files.
//
// If you need to use different assets in different
// environments, specify an object as the first parameter. That
// object's keys should be the environment name and the values
// should be the asset to use in that environment.
//
// If the library that you are including contains AMD or ES6
// modules that you would like to import into your application
// please specify an object with the list of modules as keys
// along with the exports of each module as its value.

var pickFiles = require('broccoli-static-compiler');
var mergeTrees = require('broccoli-merge-trees');

// Bootstrap UI framework's dependencies
app.import('bower_components/bootstrap/dist/js/bootstrap.js');
app.import('bower_components/bootstrap/dist/css/bootstrap.css');
var bootstrapMap = pickFiles('bower_components/bootstrap/dist/css', {
	srcDir: '/',
	files: ['bootstrap.css.map'],
	destDir: '/assets'
});
var bootstrapFonts = pickFiles('bower_components/bootstrap/dist/fonts', {
	srcDir: '/',
	files: ['glyphicons-halflings-regular.woff',
			'glyphicons-halflings-regular.ttf'],
	destDir: '/fonts'
});

// Jquery.dataTables dependencies
app.import('bower_components/datatables/media/js/jquery.dataTables.js');
app.import('bower_components/datatables/media/css/jquery.dataTables.css');
var jquery_dataTablesImgs = pickFiles('bower_components/datatables/media/images', {
	srcDir: '/',
	files: ['back_disabled.png',
			'back_enabled.png',
			'back_enabled_hover.png',
			'forward_disabled.png',
			'forward_enabled.png',
			'forward_enabled_hover.png'],
	destDir: '/images'
});

// Datatables-Bootstrap3 dependencies
app.import('bower_components/datatables-bootstrap3/BS3/assets/js/datatables.js');
app.import('bower_components/datatables-bootstrap3/BS3/assets/css/datatables.css');
var datatablesBootstrap3Imgs = pickFiles('bower_components/datatables-bootstrap3/BS3/assets/images', {
	srcDir: '/',
	files: ['sort_asc.png',
			'sort_asc_disabled.png',
			'sort_both.png',
			'sort_desc.png',
			'sort_desc_disabled.png'],
	destDir: '/images'
});

module.exports = mergeTrees([app.toTree(), bootstrapMap, bootstrapFonts, jquery_dataTablesImgs, datatablesBootstrap3Imgs]);
