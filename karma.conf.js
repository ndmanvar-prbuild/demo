// Karma configuration
// Generated on Thu Dec 10 2015 10:48:17 GMT-0800 (PST)
var fs = require('fs');

module.exports = function(config) {

  // Browsers to run on Sauce Labs
  var customLaunchers = {
    'SL_Chrome': {
      base: 'SauceLabs',
      browserName: 'chrome',
      version: 40,
      platform: 'XP'
    },
    'SL_InternetExplorer': {
      base: 'SauceLabs',
      browserName: 'internet explorer',
      version: '10',
      platform: 'Windows 7'
    },
    'SL_FireFox': {
      base: 'SauceLabs',
      browserName: 'firefox',
      platform: 'Linux',
      version: 31
    }
  };

  config.set({

    // base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '',

    // frameworks to use
    // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['jasmine'],


    // list of files / patterns to load in the browser
    files: [
        'node_modules/angular/angular.js',
        'node_modules/angular-route/angular-route.js',
        'node_modules/angular-mocks/angular-mocks.js',
        'node_modules/chai/chai.js',
        'app.js',
        'controllers/*.js',
        'services/*.js',
        'test/*-specs.js'
    ],

    // for code coverage
    preprocessors: {
      'controllers/*.js': ['coverage'],
      'services/*.js': ['coverage']
    },
    coverageReporter: {
      type : 'text-summary',
      dir : 'coverage/',
      file: 'coverage.txt'
    },

    reporters: ['progress', 'coverage', 'saucelabs', 'dots'],

    // web server port
    port: 9876,


    // enable / disable colors in the output (reporters and logs)
    colors: true,


    // level of logging
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,


    sauceLabs: {
      testName: 'Karma and Sauce Labs demo',
      startConnect: false
    },

    captureTimeout: 120000,
    customLaunchers: customLaunchers,

    // start these browsers
    // available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: Object.keys(customLaunchers),


    // Continuous Integration mode
    // if true, Karma captures browsers, runs the tests and exits
    singleRun: true,

    // Concurrency level
    // how many browser should be started simultanous
    concurrency: Infinity
  });
};
