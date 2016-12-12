(function() {

	'use strict';

	angular.module('app').factory('dataservice', DataService);

	function DataService($http) {
		var service = {
			login: login,
			logout: logout,
			hasLoggedUser: hasLoggedUser,

			getOfficers: getOfficers,
			editOfficer: editOfficer,
			createOfficer: createOfficer,
			deleteOfficer: deleteOfficer,

			createPPS: createPPS,
			editPPS: editPPS,
			getPPSs: getPPSs,
			deletePPS: deletePPS,
			submitToDispotition: submitToDispotition,
			getPPSDispotition: getPPSDispotition,
			submitToTestResult: submitToTestResult,

			getParameters: getParameters,
			deleteParameter: deleteParameter,
			createParameter: createParameter,
			editParameter: editParameter,

			getPersons: getPersons,
			deletePerson: deletePerson,
			createPerson: createPerson,
			editPerson: editPerson,
			findAvailablePerson: findAvailablePerson
		}
		return service;

		function login(data) {
			return $http.post('api/login/login.php', data);
		}

		function logout() {
			return $http.get('api/login/logout.php');	
		}

		function hasLoggedUser() {
			return $http.get('api/login/check_user.php');	
		}

		function getOfficers() {
			return $http.get('api/officer/get.php').then(getData);
		}

		function editOfficer(data) {
			return $http.put('api/officer/put.php', data);
		}

		function createOfficer(data) {
			return $http.post('api/officer/post.php', data);
		}

		function deleteOfficer(id) {
			return $http.delete('api/officer/delete.php?id=' + id);
		}

		function createPPS(data) {
			var dateFormat = 'YYYY-MM-D';
			var queryParam = '?';
			queryParam = queryParam + '&id_person=' + data.person.id;
			queryParam = queryParam + '&received_dt=' + moment(data.received_dt).format(dateFormat);
			queryParam = queryParam + '&analisis_dt=' + moment(data.analisis_dt).format(dateFormat);
			queryParam = queryParam + '&sample_condition=' + data.sample_condition;
			queryParam = queryParam + '&sample_type=' + data.sample_type;
			queryParam = queryParam + '&total_sample=' + data.samples.length;
			queryParam = queryParam + '&total_price=' + data.total;
			return $http.post('api/pps/post.php' + queryParam, data.samples);
		}

		function editPPS(data) {
			var dateFormat = 'YYYY-MM-D';
			var queryParam = '?';
			queryParam = queryParam + '&received_dt=' + moment(data.received_dt).format(dateFormat);
			queryParam = queryParam + '&analisis_dt=' + moment(data.analisis_dt).format(dateFormat);
			queryParam = queryParam + '&sample_condition=' + data.sample_condition;
			queryParam = queryParam + '&sample_type=' + data.sample_type;
			queryParam = queryParam + '&total_sample=' + data.samples.length;
			queryParam = queryParam + '&total_price=' + data.total;
			queryParam = queryParam + '&id=' + data.id;
			return $http.put('api/pps/put.php' + queryParam, data.samples);
		}

		function getPPSs() {
			return $http.get('api/pps/get_new_reports.php').then(getData);
		}

		function deletePPS(id) {
			return $http.delete('api/pps/delete.php?id=' + id);
		}

		function submitToDispotition(id) {
			return $http.put('api/pps/submit_to_disposition.php?id=' + id);
		}

		function getPPSDispotition() {
			return $http.get('api/pps/get_disposition_reports.php').then(getData);
		}

		function submitToTestResult(id, data) {
			return $http.put('api/pps/submit_to_test_result.php?id=' + id, data);
		}

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

		function findAvailablePerson() {
			return $http.get('api/persons/find_persons_not_in_report.php').then(getData);	
		}
	}

})();
