(function() {
	'use strict';

	angular.module('app').run(appRun);
	function appRun($rootScope) {
		console.log('app run');
	}

})();
