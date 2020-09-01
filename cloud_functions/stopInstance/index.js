var Compute = require('@google-cloud/compute');
var compute = Compute();
exports.stopInstance = function stopInstance(req, res) {
    var zone = compute.zone('[COMPUTE-ZONE]');
    var vm = zone.vm('[VM-NAME]');
    vm.stop(function(err, operation, apiResponse) {
        console.log('instance stop successfully');
    });
    res.status(200).send('Success stop instance');
};