(function() {
	'use strict';

	angular
		.module('app')
		.controller('LoginCtrl', LoginCtrl);

	function LoginCtrl($state) {
		var vm = this;

		vm.login = login;

		function login(argument) {
			$state.go('admin');
		}
	}
})();
