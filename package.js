// package metadata file for Meteor.js

/* eslint-env meteor */

Package.describe({
  name: 'coreui:coreui', // https://atmospherejs.com/coreui/coreui
  summary: 'The most popular front-end framework for developing responsive, mobile-first projects on the web rewritten and maintained by the CoreUI Team.',
  version: '4.1.5',
  git: 'https://github.com/classicvalues/classicvalues-website-update'
})

Package.onUse(api => {
  api.versionsFrom('METEOR@1.0')
  api.addFiles([
    'dist/css/coreui.css',
    'dist/js/coreui.js'
  ], 'client')
})
