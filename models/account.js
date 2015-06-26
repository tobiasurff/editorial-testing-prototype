var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var Account = new Schema({
    apiToken: String,
    accountId: Number,
    userId: String,
    lastUpdatedDate: Date,
    name: String
});

// Account.methods.getAllProjects = function getAllProjects(cb){
// 	return 
// }

module.exports = mongoose.model('Account', Account);