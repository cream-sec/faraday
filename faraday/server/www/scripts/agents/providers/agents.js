// Faraday Penetration Test IDE
// Copyright (C) 2013  Infobyte LLC (http://www.infobytesec.com/)
// See the file 'doc/LICENSE' for the license information

angular.module('faradayApp')
    .factory('agentFact', ['BASEURL', 'ServerAPI', '$http', '$q', function(BASEURL, ServerAPI, $http, $q) {
        var agentFact = {};

        agentFact.createAgentToken = function(agentToken) {
            var deferred = $q.defer();
            ServerAPI.createAgentToken(agentToken).then(function(response) {
                    deferred.resolve(response);
                }, function (error) {
                deferred.reject(error)
            });
            return deferred.promise;
        };


        agentFact.getAgents = function(wsName) {
            var deferred = $q.defer();
            ServerAPI.getAgents(wsName).then(function(response) {
                    deferred.resolve(response);
                }, function (error) {
                deferred.reject(error)
            });
            return deferred.promise;
        };

        return agentFact;
    }]);
