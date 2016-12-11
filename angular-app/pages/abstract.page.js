(function() {

	'use strict';

	angular
		.module( 'bursped-stock-ui' )
		.factory( 'abstractPage' , AbstractPage);

	function AbstractPage($q, $state, $stateParams, appData) {
		var service = {
			startCtrl: startCtrl,
			goToState: goToState,
			gotoDashboardPage: gotoDashboardPage,
			gotoLoginPage: gotoLoginPage
		};
		return service;

		function startCtrl() {
			var hasLoggedUser = appData.getLoggedUser();

			if ($state.current.isSecure && !hasLoggedUser) {
				// redirect to login page
				gotoLoginPage();
				return $q.reject();
			} else if (!$state.current.isSecure && hasLoggedUser) {
				// redirect to index page
				gotoDashboardPage();
				return $q.reject();
			} else {
				// let access to page;
				return $q.when();
			}
		}

		function goToState(stateName) {
			var queryParams = {
				apimock: $stateParams.apimock, 
				useMinify: $stateParams.useMinify
			};
			$state.go(stateName, queryParams);
		}

		function gotoDashboardPage() {
			goToState('dashboard.stock');
		}

		function gotoLoginPage() {
			goToState('login');
		}
	}

})();
