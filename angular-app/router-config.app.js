(function() {
	'use strict';

	angular.module('app').config(routerConfig);

	function routerConfig($stateProvider) {
		$stateProvider
			.state('admin', {
				url: '/admin',
				templateUrl: 'angular-app/pages/admin/admin.html',
				controller: 'AdminCtrl',
				controllerAs: 'vm',
				isSecure: true
			})
				.state('admin.persons', {
					url: '/persons',
					templateUrl: 'angular-app/pages/admin/persons/persons.html',
					controller: 'PersonsCtrl',
					controllerAs: 'vm',
					isSecure: true
				})
				.state('admin.parameter', {
					url: '/parameter',
					templateUrl: 'angular-app/pages/admin/parameter/parameter.html',
					controller: 'ParamterCtrl',
					controllerAs: 'vm',
					isSecure: true
				})
			.state('login', {
				url: '/',
				templateUrl: 'angular-app/pages/login/login.html',
				controller: 'LoginCtrl',
				controllerAs: 'vm',
				isSecure: false
			})
	};

})();
