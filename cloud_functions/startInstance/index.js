var http = require('http');
var Compute = require('@google-cloud/compute');
var compute = Compute();
exports.startInstance = function startInstance(req, res) {
    var zone = compute.zone('[COMPUTE-ZONE]');
    var vm = zone.vm('[VM-NAME]');
    vm.start(function(err, operation, apiResponse) {
        console.log('instance start successfully');
    });
    res.status(200).send('Success start instance');
};