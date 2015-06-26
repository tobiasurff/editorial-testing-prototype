var OptimizelyClient = require('optimizely-node-client');
var env = require('../config/' + process.env.NODE_ENV);
var API_TOKEN = env.services.optimizely.token;
var oc = new OptimizelyClient(API_TOKEN);


module.exports = {
	getAllProjects: function (accountId, cb){

	},
	getAllExperiments: function (projectId,cb){

	},
	getRunningExperiments: function (allExperiments,cb){

	},
	getUpdatedResults: function (lastUpdateDate, allExperiments,cb){

	},
	getAllExperimentResults: function (allExperiments,cb){

	},
	getDeltaProjects: function (dbProjects,allProjects,cb){

	},
	getDeltaExperiments: function (dbExperiments,allExperiments,projectId,cb){

	},
	getDeltaExperimentResults: function (expId){

	}
};
function getAllExperiments(){

}


