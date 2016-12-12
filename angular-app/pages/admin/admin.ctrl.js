(function() {
	'use strict';

	angular
		.module('app')
		.controller('AdminCtrl', AdminCtrl);

	function AdminCtrl($state, abstractPage, dataservice) {
		var vm = this;

		vm.logout = logout;
		vm.gotoToState = gotoToState;

		abstractPage.startCtrl();

		function logout() {
			dataservice.logout().then(function() {
				$state.go('login');
			});
		}

		function gotoToState(targetState) {
			$state.go(targetState)
		}
	}

})();
