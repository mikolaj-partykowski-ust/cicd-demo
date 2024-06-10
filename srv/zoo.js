const cds = require("@sap/cds");

class ZooService extends cds.ApplicationService {
    async init () {
        
        await super.init();
    };
}

module.exports = ZooService