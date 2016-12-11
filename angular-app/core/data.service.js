(function() {

	'use strict';

	angular.module('app').factory('dataservice', DataService);

	function DataService($http) {
		var service = {
			getPersons: getPersons,
			deletePerson: deletePerson,
			createPerson: createPerson,
			editPerson: editPerson
		}
		return service;

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
