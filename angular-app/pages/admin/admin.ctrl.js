(function() {
	'use strict';

	angular
		.module('app')
		.controller('AdminCtrl', AdminCtrl);

	function AdminCtrl($state) {
		var vm = this;

		vm.logout = logout;
		vm.gotoToState = gotoToState;

		function logout() {
			$state.go('login');
		}

		function gotoToState(targetState) {
			$state.go(targetState)
		}
	}

})();
