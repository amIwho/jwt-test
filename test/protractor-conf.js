exports.config = {
  allScriptsTimeout: 11000,

  specs: [
    'e2e/*.scenario.coffee'
  ],

  seleniumAddress: 'http://localhost:4444/wd/hub',

  capabilities: {
    'browserName': 'chrome'
  },

  framework: 'jasmine2',

  jasmineNodeOpts: {
    defaultTimeoutInterval: 30000
  }
};
