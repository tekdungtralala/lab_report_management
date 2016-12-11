(function() {

	'use strict';

	angular.module('app').factory('dataservice', DataService);

	function DataService($http) {
		var service = {
			getParameters: getParameters,
			deleteParameter: deleteParameter,
			createParameter: createParameter,
			editParameter: editParameter,

			getPersons: getPersons,
			deletePerson: deletePerson,
			createPerson: createPerson,
			editPerson: editPerson,			
		}
		return service;

		function getParameters(data) {
			return $http.get('api/parameter/get.php').then(getData);
		}

		function deleteParameter(id) {
			return $http.delete('api/parameter/delete.php?id=' + id);
		}

		function createParameter(data) {
			return $http.post('api/parameter/post.php', data);
		}

		function editParameter(data) {
			return $http.put('api/parameter/put.php', data);
		}



		function getPersons(data) {
			return $http.get('api/persons/get.php').then(getData);
		}

		function deletePerson(id) {
			return $http.delete('api/persons/delete.php?id=' + id);
		}

		function createPerson(data) {
			return $http.post('api/persons/post.php', data);
		}

		function editPerson(data) {
			return $http.put('api/persons/put.php', data);
		}

		function getData(response) {
			return response.data;
		}
	}

})();
