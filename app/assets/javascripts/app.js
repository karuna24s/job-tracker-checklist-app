(function() {

  'use strict'

  angular
    .module('JobTrackerChecklistApp', ['ui.router', 'templates', 'Devise', 'ngMessages'])
    .config(function($httpProvider){
      $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    });
}())
